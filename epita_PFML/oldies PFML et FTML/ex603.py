from som1 import *
from sklearn.datasets import load_iris
from numpy.random import normal
iris = load_iris()
def color(x):
    return{2:'red',1:'orange',0:'yellow'}[x]
X,Y = iris.data, iris.target 
som = SOM(10, 10, 4, 50)
som.train(X)
image_grid = som.get_centroids()
mapped = som.map_vects(X)
for i in range(len(Y)):
    plt.scatter(mapped[i][0]+normal(scale=0.1),
        mapped[i][1]+normal(scale=0.1),c=color(Y[i]))
plt.show()