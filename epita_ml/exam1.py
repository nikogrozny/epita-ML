from sklearn import datasets,svm
from matplotlib import pyplot as plt
import numpy as np
iris = datasets.load_iris()
X,Y = iris.data[:,0:2],iris.target
plt.scatter(X[:,1],X[:,2],marker=Y)
plt.show()