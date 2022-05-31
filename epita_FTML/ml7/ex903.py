from sklearn.linear_model import LinearRegression
from numpy.random import normal,randint
X = randint(0,100,100)
Y1 = 3*X + normal(0,10,100)
Y2 = 3*X + normal(0,50,100)
l = LinearRegression()
for s in [1,50,200]:
    for n in [40,60,90]:
        l = LinearRegression()
        Y = 3*X + normal(0,s,100)
        l.fit(X[:n].reshape(-1,1),Y[:n])
        print(s,n,l.coef_,l.score(X[n:].reshape(-1,1),Y[n:]))
