import pandas as pd
from matplotlib import pyplot as plt
from pandas.plotting import scatter_matrix

iris_data = pd.read_csv('./iris.csv')
colMap={"Iris-setosa":"red","Iris-virginica":"green",
    "Iris-versicolor":"black"}
colors=list(map(lambda x:colMap.get(x),iris_data.Name))
scatter_matrix(iris_data, alpha=0.6, figsize=(6, 6),
    diagonal='kde',c=colors)
plt.show()