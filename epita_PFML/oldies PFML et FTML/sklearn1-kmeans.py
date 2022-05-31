import numpy as np
from sklearn import datasets
from sklearn.neighbors import KNeighborsClassifier
iris = datasets.load_iris()
iris_X, iris_y = iris.data, iris.target
np.random.seed(0)
indices = np.random.permutation(len(iris_X))
iris_X_train, iris_y_train = iris_X[indices[:-10]], iris_y[indices[:-10]]
iris_X_test, iris_y_test = iris_X[indices[-10:]], iris_y[indices[-10:]]
knn = KNeighborsClassifier()
knn.fit(iris_X_train, iris_y_train)
result = knn.predict(iris_X_test)
print(result,iris_y_test)
