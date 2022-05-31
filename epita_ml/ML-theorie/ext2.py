import numpy as np
import random
from matplotlib import pyplot as plt
X=[x+random.normalvariate(0,0.2) for x in range(30)]
Y=[x+random.normalvariate(0,0.2) for x in range(30)]
Y[29]+=200
plt.scatter(X,Y,c="green")
for p in range(1,3):
    coefs,score=list(np.linspace(0,3,601)),[]
    for c in coefs:
        m=sum(Y[i]-c*X[i] for i in range(len(X)))/len(X)
        score.append(sum(abs(Y[i]-c*X[i]-m)**p for i in range(len(X))))
    s_opt=min(score)
    c_opt=coefs[score.index(s_opt)]
    m_opt=sum(Y[i]-c_opt*X[i] for i in range(len(X)))/len(X)
    plt.plot(X,[c_opt*x+m_opt for x in X])
    print(c_opt,m_opt)
plt.show()