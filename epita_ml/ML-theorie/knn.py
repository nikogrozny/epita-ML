from sklearn.neighbors import KNeighborsClassifier
from sklearn.datasets import load_iris
import numpy as np
from matplotlib import pyplot as plt
X,Y=load_iris().data,load_iris().target
knn = KNeighborsClassifier(n_neighbors=2)
nmax=Y.shape[0]
for i in range(20,nmax,20):
    knn.fit(X[:i,:],Y[:i])
    fX = knn.predict(X)
    plt.subplot(3,3,i//20)
    plt.scatter(X[:,0],X[:,1],c=list(fX))
plt.show()