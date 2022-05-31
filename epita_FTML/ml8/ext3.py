from sklearn import datasets,cluster
iris = datasets.load_iris()
X,Y= iris.data,iris.target
km = cluster.KMeans(n_clusters=3)
km.fit(X,Y)
res = km.predict(X)
cm = [[len([i for i in range(len(Y)) if res[i]==j 
  and Y[i]==k]) for j in range(3)] for k in range(3)]
print(cm)