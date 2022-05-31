import pandas as pd
from matplotlib import pyplot as plt
from pandas.plotting import scatter_matrix
titanic = pd.read_csv('./C2/data1.csv')[['fare','age','survived']].dropna()
colMap={0:"red",1:"green"}
colors=list(map(lambda x:colMap.get(x),titanic.survived))
scatter_matrix(titanic[['fare','age']],alpha=0.6,
    c=colors,diagonal='kde')
plt.show()