import numpy as np
import matplotlib.pyplot as plt
from sklearn.cluster import KMeans
from sklearn.datasets import load_iris
from random import shuffle
def color(x):
    return({0:'red',1:'green',2:'yellow'}[x])
X = load_iris().data
i_train = list(range(len(X)))
shuffle(i_train)
X_train,X_test=X[i_train[:80]],X[i_train[80:]]
for k in range(2,5):
    kmean = KMeans(n_clusters=k,random_state=randrange(200))
    y_pred1 = kmean.fit_predict(X_train)
    y_pred2 = kmean.predict(X_test)
    cc = np.transpose(kmean.cluster_centers_)
    plt.subplot(2,2,k)
    plt.scatter(X_train[:, 0],X_train[:, 1],c=y_pred1)
    plt.scatter(X_test[:, 0],X_test[:, 1],c=y_pred2,alpha=0.6)
    plt.scatter(cc[0], cc[1],c='red')
    plt.xlabel("Prediction pour k={0}".format(k))
plt.show()