import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
from pandas.plotting import scatter_matrix
from random import gauss

titanic = pd.read_csv('./titanic.csv')

gf = titanic.columns.to_series().groupby(titanic.dtypes)
for field in gf.groups[np.dtype('O')]:
    valeurs = list(set(titanic[field]))
    titanic[field] = titanic[field].apply(lambda x:valeurs.index(x))
    titanic[field] = pd.to_numeric(titanic[field])
titanic['pclass'] = titanic['pclass'].apply(lambda x:x+gauss(0,0.05))
titanic['sex'] = titanic['sex'].apply(lambda x:x+gauss(0,0.05))

colMap={0:"red",1:"green"}
colors=list(map(lambda x:colMap.get(x),titanic.survived))

scatter_matrix(titanic[['pclass','sex','age']], alpha=0.6, figsize=(6, 6),c=colors,diagonal='')
plt.show()