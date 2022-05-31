import numpy as np
from sklearn import datasets
from sklearn.neighbors import KNeighborsClassifier
iris = datasets.load_iris()
X, Y = iris.data, iris.target
np.random.seed(0)
indices = np.random.permutation(len(X))
X_train, Y_train = X[indices[:-10]], Y[indices[:-10]]
X_test, Y_test = X[indices[-10:]], Y[indices[-10:]]
knn = KNeighborsClassifier()
knn.fit(X_train, Y_train)
result = knn.predict(X_test)
print(result,Y_test)
