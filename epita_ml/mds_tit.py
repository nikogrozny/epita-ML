import matplotlib.pyplot as plt
from sklearn import datasets
from sklearn.manifold import MDS

titanic = pd.read_csv('./titanic.csv')

gf = titanic.columns.to_series().groupby(titanic.dtypes)
for field in gf.groups[np.dtype('O')]:
    valeurs = list(set(titanic[field]))
    titanic[field] = titanic[field].apply(lambda x:valeurs.index(x))
    titanic[field] = pd.to_numeric(titanic[field])
    
X,Y = titanic.dropna(axis=0, how='any'), titanic['survived']
colMap={0:"red",1:"green"}
colors=list(map(lambda x:colMap.get(x),Y))

X_2ev = MDS(n_components=2).fit_transform(X)
plt.scatter(X_2ev[:,0],X_2ev[:,1],alpha=0.7,c=colors)

plt.show()