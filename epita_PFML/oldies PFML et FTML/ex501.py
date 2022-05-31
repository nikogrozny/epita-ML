import numpy as np
import matplotlib.pyplot as plt
from sklearn.cluster import KMeans
from sklearn.datasets import load_iris
from random import randrange
iris = load_iris()
X = iris.data
Y = iris.target
plt.subplot(221)
plt.scatter(X[:, 0], X[:, 1], c=Y)
plt.xlabel("Donnees")
for k in range(2,5):
    kmean = KMeans(n_clusters=k,random_state=randrange(200))
    y_pred = kmean.fit_predict(X)
    cc = np.transpose(kmean.cluster_centers_)
    print(cc)
    plt.subplot(2,2,k)
    plt.scatter(X[:, 0], X[:, 1], c=y_pred)
    plt.scatter(cc[0], cc[1],c='red')
    plt.xlabel("Prediction pour k={0}".format(k))
plt.show()