#PAS FONCTIONNEL ENCORE
import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
from sklearn import datasets
from sklearn.decomposition import PCA

titanic = pd.read_csv('./titanic.csv')
gf = titanic.columns.to_series().groupby(titanic.dtypes)

for field in gf.groups[np.dtype('O')]:
    valeurs = list(set(titanic[field]))
    titanic[field] = titanic[field].apply(lambda x:valeurs.index(x))
    titanic[field] = pd.to_numeric(titanic[field]) 

colMap={0:"red",1:"black"}
colors=list(map(lambda x:colMap.get(x),titanic.survived))

X,Y = titanic['pclass','sex','age'], titanic[] 
X_2ev = PCA(n_components=2).fit_transform(titanic.data)
plt.scatter(X_2ev[:,0],X_2ev[:,1],alpha=0.7,c=colors)

plt.show()