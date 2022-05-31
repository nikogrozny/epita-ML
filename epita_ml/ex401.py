import pandas as pd
from sklearn.decomposition import PCA
df = pd.read_csv('./C3/data2.csv',sep=";")
data = df[['adm','dip','mil']].dropna()
acp = PCA()
acp.fit_transform(data)
print(acp.explained_variance_)
print(acp.components_)
