import pandas as pd
from matplotlib import pyplot as plt
from pandas.plotting import scatter_matrix
titanic = pd.read_csv('./C2/data1.csv')
colMap={0:"red",1:"green"}
colors=list(map(lambda x:colMap.get(x),titanic.survived))
titanic.sex = titanic.sex.apply(
    lambda x:{'male':0,'female':1}[x])
scatter_matrix(titanic[['fare','sex','age']],
    alpha=0.6,c=colors,diagonal='hist')
plt.show()