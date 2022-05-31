import pandas as pd
import numpy as np
from sklearn.linear_model import LinearRegression
from matplotlib import pyplot as plt
iris = pd.read_csv('./C3/data1.csv')
X = iris.PetalWidth.values.reshape(-1,1)
Y = iris.PetalLength
lr = LinearRegression()
lr.fit(X,Y)
plt.scatter(X,Y,c="orange")
plt.xlabel("Epaisseur des Petales")
plt.ylabel("Longueur des Petales")
test = np.arange(0,2.5,0.01).reshape(-1,1)
plt.plot(test,lr.predict(test))
plt.show()