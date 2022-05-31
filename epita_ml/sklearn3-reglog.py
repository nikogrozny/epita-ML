from sklearn import linear_model, datasets
import matplotlib.pyplot as plt
import numpy as np
iris = datasets.load_iris()
X, Y = iris.data, iris.target
logistic = linear_model.LogisticRegression(C=1e5)
logistic.fit(X, Y)
print(logistic.coef_)
print(logistic.score(X, Y))
plt.scatter(Y,X[:,0])
plt.scatter(Y,X[:,2])
plt.scatter(Y,X[:,3])
plt.show()