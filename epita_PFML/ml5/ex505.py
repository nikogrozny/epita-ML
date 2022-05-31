import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
from sklearn.cluster import AgglomerativeClustering, KMeans
titanic = pd.read_csv('./C2/data1.csv')
X = titanic[['age','fare']].dropna()
for k in [4,5]:
    km = KMeans(n_clusters = k)
    ac = AgglomerativeClustering(n_clusters=k)
    ykm, yac = km.fit_predict(X), ac.fit_predict(X)
    plt.subplot(2,2,k-3)
    plt.scatter(X.age, X.fare, c=ykm)
    cc = np.transpose(km.cluster_centers_)
    plt.scatter(cc[0], cc[1],c='red')
    plt.xlabel("Kmeans k={0}".format(k))
    plt.subplot(2,2,k-1)
    plt.scatter(X.age, X.fare, c=yac)
    plt.xlabel("CAH k={0}".format(k))
plt.show()