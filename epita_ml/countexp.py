def fastexp(a,b):
    if b == 0:
        return (1,0)
    (ex,c) = fastexp(a,b//2)
    if b%2 == 0:
        return (ex**2,c+1)
    else:
        return (a*ex**2,c+1)
print(fastexp(0.999999,10**8)[1])
f = 1
for i in range(1,10**8):
    f *= 0.999999
print(i)