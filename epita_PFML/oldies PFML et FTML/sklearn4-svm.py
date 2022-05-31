from sklearn import svm, datasets
import numpy as np
iris = datasets.load_iris()
X, Y = iris.data, iris.target
np.random.seed(55)
indices = np.random.permutation(len(X))
X_train, Y_train = X[indices[:-70]], Y[indices[:-70]]
X_test, Y_test = X[indices[-70:]], Y[indices[-70:]]
svc,svc2=svm.SVC(kernel='linear'),svm.SVC(kernel='rbf')
svc.fit(X_train, Y_train)
svc2.fit(X_train, Y_train)
results=(svc.predict(X_test),svc2.predict(X_test))
print(results[0]-Y_test,"\n",results[1]-Y_test)