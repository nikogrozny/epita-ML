import tensorflow as tf
import numpy as np

class SOM(object):
    _trained = False
    def __init__(self, m, n, dim, n_iterations=100, alpha=None, sigma=None):
        self._m = m
        self._n = n
        if alpha is None:
            alpha = 0.3
        else:
            alpha = float(alpha)
        if sigma is None:
            sigma = max(m, n) / 2.0
        else:
            sigma = float(sigma)
        self._n_iterations = abs(int(n_iterations))
        self._graph = tf.Graph()
        with self._graph.as_default():
            self._weightage_vects = tf.Variable(tf.random_normal([m*n, dim]))
            self._location_vects = tf.constant(np.array(
                list(self._neuron_locations(m, n))))
            self._vect_input = tf.placeholder("float", [dim])
            self._iter_input = tf.placeholder("float")
            bmu_index = tf.argmin(tf.sqrt(tf.reduce_sum(
                tf.pow(tf.subtract(self._weightage_vects, tf.stack(
                    [self._vect_input for i in range(m*n)])), 2), 1)),0)
            slice_input = tf.pad(tf.reshape(bmu_index, [1]),np.array([[0, 1]]))
            bmu_loc = tf.reshape(tf.slice(self._location_vects, slice_input,tf.constant(np.array([1, 2], dtype=np.int64))),[2])
            learning_rate_op = tf.subtract(1.0, tf.div(self._iter_input,self._n_iterations))
            _alpha_op = tf.multiply(alpha, learning_rate_op)
            _sigma_op = tf.multiply(sigma, learning_rate_op)
            bmu_distance_squares = tf.reduce_sum(tf.pow(tf.subtract(self._location_vects, tf.stack([bmu_loc for i in range(m*n)])), 2), 1)
            neighbourhood_func = tf.exp(tf.negative(tf.div(tf.cast(
                bmu_distance_squares, "float32"), tf.pow(_sigma_op, 2))))
            learning_rate_op = tf.multiply(_alpha_op, neighbourhood_func)
            learning_rate_multiplytiplier = tf.stack([tf.tile(tf.slice(
                learning_rate_op, np.array([i]), np.array([1])), [dim]) for i in range(m*n)])
            weightage_delta = tf.multiply(
                learning_rate_multiplytiplier,
                tf.subtract(tf.stack([self._vect_input for i in range(m*n)]),
                       self._weightage_vects))                                         
            new_weightages_op = tf.add(self._weightage_vects,
                                       weightage_delta)
            self._training_op = tf.assign(self._weightage_vects,
                                          new_weightages_op)                                       
            self._sess = tf.Session()
            init_op = tf.global_variables_initializer()
            self._sess.run(init_op)

    def _neuron_locations(self, m, n):
        for i in range(m):
            for j in range(n):
                yield np.array([i, j])
    def train(self, input_vects):
        for iter_no in range(self._n_iterations):
            for input_vect in input_vects:
                self._sess.run(self._training_op,
                               feed_dict={self._vect_input: input_vect,
                                          self._iter_input: iter_no})
        centroid_grid = [[] for i in range(self._m)]
        self._weightages = list(self._sess.run(self._weightage_vects))
        self._locations = list(self._sess.run(self._location_vects))
        for i, loc in enumerate(self._locations):
            centroid_grid[loc[0]].append(self._weightages[i])
        self._centroid_grid = centroid_grid
        self._trained = True

    def get_centroids(self):

        if not self._trained:
            raise ValueError("SOM not trained yet")
        return self._centroid_grid

    def map_vects(self, input_vects):

        if not self._trained:
            raise ValueError("SOM not trained yet")
        to_return = []
        for vect in input_vects:
            min_index = min([i for i in range(len(self._weightages))],key=lambda x: np.linalg.norm(vect-self._weightages[x]))
            to_return.append(self._locations[min_index])
        return to_return
        
from matplotlib import pyplot as plt

if __name__ == "__main__":

    colors = np.array(
     [[0., 0., 0.],[0., 0., 1.],[0., 0., 0.5],[0.125, 0.529, 1.0],
      [0.33, 0.4, 0.67],[0.6, 0.5, 1.0],[0., 1., 0.],
      [1., 0., 0.],[0., 1., 1.],[1., 0., 1.],[1., 1., 0.],
      [1., 1., 1.],[.33, .33, .33],[.5, .5, .5],[.66, .66, .66]])
    color_names = \
    ['black', 'blue', 'darkblue', 'skyblue',
     'greyblue', 'lilac', 'green', 'red',
     'cyan', 'violet', 'yellow', 'white',
     'darkgrey', 'mediumgrey', 'lightgrey']

#Train a 20x30 SOM with 400 iterations
    som = SOM(20, 30, 3, 400)
    som.train(colors)

#Get output grid
    image_grid = som.get_centroids()

#Map colours to their closest neurons
    mapped = som.map_vects(colors)

#Plot
    plt.imshow(image_grid)
    plt.title('Color SOM')
    for i, m in enumerate(mapped):
        plt.text(m[1], m[0], color_names[i], ha='center', va='center',
                bbox=dict(facecolor='white', alpha=0.5, lw=0))
    plt.show()