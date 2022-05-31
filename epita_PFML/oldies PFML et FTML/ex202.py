from matplotlib import pyplot as plt
import numpy as np
from math import exp
fig = plt.figure()
x=np.linspace(0,1,100)
for i,k in enumerate([1,5,10]):
    fig.add_subplot(2,2,i+1)
    plt.plot(x,np.vectorize(lambda z:exp(-k*z))(x),
      label="y=exp(-{0}x)".format(k))
    plt.xlabel("x")
    plt.legend()
plt.show()