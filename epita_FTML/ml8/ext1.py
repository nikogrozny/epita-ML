import pandas as pd
import numpy as np
from matplotlib import pyplot as plt
iris = pd.read_csv('data1.csv')
Y,X=iris.PetalLength,iris.PetalWidth
plt.scatter(X,Y,c="green")
for p in range(1,3):
    coefs,score=list(np.linspace(0,3,601)),[]
    for c in coefs:
        m=sum(Y[i]-c*X[i] for i in range(len(X)))/len(X)
        score.append(sum(abs(Y[i]-c*X[i]-m)**p for i in range(len(X))))
    s_opt=min(score)
    c_opt=coefs[score.index(s_opt)]
    m_opt=sum(Y[i]-c_opt*X[i] for i in range(len(X)))/len(X)
    plt.plot(X,c_opt*X+m_opt)
    print(c_opt,m_opt)
plt.show()