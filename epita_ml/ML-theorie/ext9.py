import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
from math import sqrt
iris = pd.read_csv('data1.csv')
Y,X=iris.PetalLength,iris.PetalWidth
plt.scatter(X,Y,c="green")
coefs,moy,err=list(np.linspace(2,3,10)),[],[]
for c in coefs:
    moy.append(sum(Y[i]-c*X[i] for i in range(len(X)))/len(X))
    err.append(sqrt(sum(abs(Y[i]-c*X[i]-moy[-1])**2
     for i in range(len(X)))))
    plt.plot(X,c*X+moy[-1])
print(coefs,"\n",moy,"\n",err)
s_opt=min(err)
c_opt=coefs[err.index(s_opt)]
m_opt=sum(Y[i]-c_opt*X[i] for i in range(len(X)))/len(X)
plt.show()
