import pandas as pd
from sklearn.decomposition import PCA
from matplotlib import pyplot as plt
df = pd.read_csv('./C3/data2.csv',sep=";")
data = df[['adm','dip','mil']].dropna()
acp = PCA()
rot = acp.fit_transform(data)
plt.scatter(rot[:,0],rot[:,1],alpha=0.6)
cf = acp.components_
plt.xlabel("{0:.2}adm+{1:.2}dip+{2:.2}mil".format(
    cf[0][0],cf[0][1],cf[0][2]))
plt.ylabel("{0:.2}adm+{1:.2}dip+{2:.2}mil".format(
    cf[1][0],cf[1][1],cf[1][2]))
plt.show()
