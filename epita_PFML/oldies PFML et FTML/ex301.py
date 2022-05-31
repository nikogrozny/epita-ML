import pandas as pd
from sklearn.linear_model import LinearRegression
iris = pd.read_csv('./C3/data1.csv')
X = iris.PetalWidth.values.reshape(-1,1)
Y = iris.PetalLength
lr = LinearRegression()
lr.fit(X,Y)
print(lr.coef_)

##question 2
print(lr.score(X,Y))
Y = iris.SepalLength
lr.fit(X,Y)
print(lr.score(X,Y))
#attention ce score est trompeur