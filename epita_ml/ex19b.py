from time import time
for i in range(10):
    t0 = time()
    for j in range(10**i):
        x = 2*3
    print(i,time()-t0)