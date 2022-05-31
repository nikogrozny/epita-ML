from sklearn import datasets,svm
from matplotlib import pyplot as plt
import numpy as np
iris = datasets.load_iris()
X,Y = iris.data[:,0:2],iris.target
X_train,X_test,Y_train,Y_test = X[:75],X[75:],Y[:75],Y[75:]
ref = list(np.linspace(4,7,100))
plt.scatter(X_train[:,0],X_train[:,1],c=Y_train)
for p in range(5):
    vm = svm.LinearSVC(C=10**(p-2))
    vm.fit(X_train,Y_train)
    b,a = list(vm.coef_[0]),vm.intercept_[0]
    plt.plot(ref,[-b[0]*x/b[1]-a/b[1] for x in ref],
        label=str(10**(p-2)))
plt.legend()
plt.show()
    