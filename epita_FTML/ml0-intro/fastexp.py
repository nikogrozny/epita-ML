def fastexp(a,b):
    if b == 0:
        return 1
    if b%2 == 0:
        return fastexp(a,b//2)**2
    else:
        return a*fastexp(a,b//2)**2