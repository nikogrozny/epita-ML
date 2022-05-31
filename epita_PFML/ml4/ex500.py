import numpy as np
import pandas as pd
from sklearn.svm import SVC
from sklearn.datasets import load_digits
from random import shuffle
chiffres = load_digits()
X,Y = chiffres.data,chiffres.target
X_train,X_test,Y_train,Y_test=X[:1000],X[1000:],Y[:1000],Y[1000:]
s = SVC()
s.fit(X_train,Y_train)
print(s.score(X_train,Y_train),s.score(X_test,Y_test))
print(s.predict(X_test)[:30])
print(Y_test[:30])
s = SVC(max_iter=10)
s.fit(X_train,Y_train)
print(s.score(X_train,Y_train),s.score(X_test,Y_test))
print(s.predict(X_test)[:30])
print(Y_test[:30])