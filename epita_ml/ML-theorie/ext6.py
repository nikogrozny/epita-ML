from sklearn.neighbors import KNeighborsClassifier
import numpy as np
from matplotlib import pyplot as plt
for n in range(1,5):
    X = np.concatenate((np.random.normal(0,1,n*5),
        np.random.normal(5,1,n*5)))
    Y = np.concatenate((np.full(n*5,0),np.full(n*5,1)))
    X_train,Y_train = X[:n*4].reshape(-1,1),Y[:n*4]
    knn = KNeighborsClassifier(n_neighbors=2)
    knn.fit(X_train,Y_train)
    fX = knn.predict(X.reshape(-1,1))
    plt.subplot(2,4,n)
    plt.scatter(X,X,c=list(fX))
    plt.subplot(2,4,n+4)
    plt.scatter(X,X,c=list(Y))
plt.show()