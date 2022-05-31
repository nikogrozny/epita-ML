import numpy as np
from sklearn.model_selection import cross_val_score
from sklearn import datasets, svm
import matplotlib.pyplot as plt
digits = datasets.load_digits()
X,Y = digits.data, digits.target
Delta = np.arange(1,6)
print(Delta)
scores = []
for d in Delta:
    svc = svm.SVC(kernel='poly',degree=d)
    this_scores = cross_val_score(svc, X, Y)
    scores.append(np.mean(this_scores))
plt.plot(Delta, scores)
plt.ylabel('score')
plt.xlabel('degre')
plt.show()