from math import log
def dec2bin(n):
    m = int(log(n)/log(2))
    liste = [0 for i in range(m+1)]
    for i in range(m+1):
        liste[i] = n%(2**(i+1))//(2**i)
    return liste
def enum_bin(p):
    for n in range(1,p):
        print(dec2bin(n))