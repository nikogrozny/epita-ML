import numpy as np
from sklearn.model_selection import cross_val_score
from sklearn import datasets, svm
import matplotlib.pyplot as plt
digits = datasets.load_digits()
X,Y = digits.data, digits.target
svc = svm.SVC(kernel='linear')
C_s = np.logspace(-10,0,10)
scores = []
for C in C_s:
    svc.C = C
    this_scores = cross_val_score(svc, X, Y)
    scores.append(np.mean(this_scores))
plt.semilogx(C_s, scores)
plt.ylabel('score')
plt.xlabel('Parameter C')
plt.show()