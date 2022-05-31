import numpy as np
import matplotlib.pyplot as plt
from sklearn.cluster import AgglomerativeClustering
from sklearn.datasets import load_iris
iris = load_iris()
X = iris.data
Y = iris.target
plt.subplot(221)
plt.scatter(X[:, 0], X[:, 1], c=Y)
plt.xlabel("Donnees")
for k in range(2,5):
    cah = AgglomerativeClustering(n_clusters=k)
    y_pred = cah.fit_predict(X)
    plt.subplot(2,2,k)
    plt.scatter(X[:, 0], X[:, 1], c=y_pred)
    plt.xlabel("Prediction pour k={0}".format(k))
plt.show()