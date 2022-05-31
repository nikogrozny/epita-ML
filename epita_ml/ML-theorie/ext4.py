import numpy as np
from matplotlib import pyplot as plt
m1,m2=[[40,5],[4,40]],[[43,2],[9,35]]
eps=np.linspace(0.1,1,100)
y1=[m1[0][1]+x*m1[1][0] for x in eps]
y2=[m2[0][1]+x*m2[1][0] for x in eps]
plt.plot(eps,y1)
plt.plot(eps,y2)
plt.show()