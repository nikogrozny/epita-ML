import matplotlib.pyplot as plt
from sklearn import datasets
from sklearn.decomposition import PCA
from sklearn.feature_extraction.image import grid_to_graph
from sklearn.cluster import AgglomerativeClustering

iris = datasets.load_iris()
n_clusters = 3
ward = AgglomerativeClustering(n_clusters=n_clusters, linkage='ward')
ward.fit(X)
label = ward.labels_
print(label)

X,Y = iris.data, label
colMap={0:"red",1:"green",2:"black",3:"blue",4:"orange",5:"yellow"}
colors=list(map(lambda x:colMap.get(x),Y))
X_2ev = PCA(n_components=2).fit_transform(X)
plt.scatter(X_2ev[:,0],X_2ev[:,1],alpha=0.7,c=colors)

plt.show()