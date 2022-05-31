from matplotlib import pyplot as plt
import numpy as np
from math import exp
plt.ylabel("y=exp(-lambda x)")
plt.xlabel("x")
x=np.linspace(0,1,100)
for k in [1,5,10]:
    plt.plot(x,np.vectorize(lambda z:exp(-k*z))(x),
    label="lambda: {0}".format(k))
    plt.annotate("y=1/e",(1/k,exp(-1)))
plt.legend()
plt.show()