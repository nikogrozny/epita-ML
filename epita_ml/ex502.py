import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.svm import SVC
from sklearn.datasets import load_iris
from random import shuffle
def color(x):
    return({0:'red',1:'green',2:'yellow'}[x])
iris = load_iris()
X,Y = iris.data,pd.Series(iris.target)
i_train = list(range(len(X)))
shuffle(i_train)
X_train,X_test,Y_train=X[i_train[:80]],X[i_train[80:]],Y[i_train[:80]]
s = SVC(kernel='linear')
s.fit(X_train,Y_train)
plt.subplot(121)
for p in X_test:
    plt.scatter(p[0],p[1],alpha=0.1,
        c=color(s.predict([[p[0],p[1],p[2],p[3]]])[0]))
plt.scatter(X_train[:, 0],X_train[:, 1],c=Y_train.apply(color))
plt.subplot(122)
plt.scatter(X[:, 0], X[:, 1],c=Y.apply(color))
plt.show()