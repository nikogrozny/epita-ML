from math import exp
from time import time
t1 = time()
def fastexp(a,b):
    if b == 0:
        return 1
    if b%2 == 0:
        return fastexp(a,b//2)**2
    else:
        return a*fastexp(a,b//2)**2
print(fastexp(0.999999,10**8))
t2 = time()
f = 1
for i in range(1,10**8):
    f *= 0.999999
print(f)
t3 = time()
print(0.999999**(10**8))
t4 = time()
print(t4-t3,t3-t2,t2-t1)