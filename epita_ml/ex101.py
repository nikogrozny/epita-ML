import pandas as pd
from numpy.random import randint
## question 1
df1 = pd.read_csv('./C1/data1.csv')
print(df1.info())
## question 2
df2 = df1.dropna(axis=1)
print(df1.head())
print(df2.head())
## question 3
n_lignes = df1.shape[0]
rand_vect = randint(0,n_lignes,size=5)
print(df1.loc[rand_vect])

