import pandas as pd
from matplotlib import pyplot as plt
from pandas.plotting import scatter_matrix
from random import gauss
titanic = pd.read_csv('./C2/data1.csv')
colMap={0:"yellow",1:"green"}
def colors(d):
    return {1:'green',0:'yellow'}[d]
titanic.sex = titanic.sex.apply(
    lambda x:{'male':0,'female':1}[x])
titanic['sex'] = titanic['sex'].apply(
    lambda x:x+gauss(0,0.05))
titanic['survived'] = titanic['survived'].apply(colors)
plt.scatter(titanic['age'],titanic['fare'],c=titanic.survived)
for x in titanic.index:
    if titanic.fare[x] > 400:
        print(titanic.survived[x])
plt.show()
