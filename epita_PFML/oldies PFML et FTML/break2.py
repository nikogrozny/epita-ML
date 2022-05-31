from random import randrange
def kill2(t,k,u):
    out = t
    while not u in out :
        key = [randrange(1,27) for i in range(k)]
        out,i = "",0
        for c in t:
            out += chr((ord(c)-65+key[i])%26+65)
            i = (i+1)%k
    return out
print(kill2("LBJNKVXSBURPRCIDPNYDXO",4,"ESTBEAU"))