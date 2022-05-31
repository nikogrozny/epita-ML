from som1 import *
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
som = SOM(20, 30, 3, 400)
som.train(colors)
image_grid = som.get_centroids()
mapped = som.map_vects(colors)
plt.imshow(image_grid)
plt.title('Color SOM')
for i, m in enumerate(mapped):
    plt.text(m[1], m[0], color_names[i], ha='center', va='center',
    bbox=dict(facecolor='white', alpha=0.5, lw=0))
plt.show()