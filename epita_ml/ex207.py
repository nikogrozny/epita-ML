import pandas as pd
from matplotlib import pyplot as plt
from pandas.plotting import scatter_matrix
from random import gauss
titanic = pd.read_csv('./C2/data1.csv')[['fare','sex','age','survived']]
titanic = titanic.dropna().reset_index()
colMap={0:"yellow",1:"green"}
def colors(d):
    return {1:'green',0:'yellow'}[d]
titanic.sex = titanic.sex.apply(
    lambda x:{'male':0,'female':1}[x])
titanic['sex'] = titanic['sex'].apply(
    lambda x:x+gauss(0,0.05))
titanic['survived'] = titanic['survived'].apply(colors)
scatter_matrix(titanic[['fare','sex','age']],
    alpha=0.6,diagonal='hist',c=titanic['survived'])
plt.show()
