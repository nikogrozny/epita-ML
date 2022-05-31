import pandas as pd
from pandas.plotting import scatter_matrix
from matplotlib import pyplot as plt
df = pd.read_csv('./C3/data2.csv',sep=";")
data = df[['adm','dip','mil']]
scatter_matrix(data,alpha=0.6,diagonal='hist')
plt.show()
