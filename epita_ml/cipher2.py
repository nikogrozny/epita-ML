from random import randrange
def cipher2(s,k):
    key = [randrange(1,27) for i in range(k)]
    out = ""
    i = 0
    for c in s:
        out += chr((ord(c)-65+key[i])%26+65)
        i = (i+1)%k
    return out
print(cipher2("OHMONBATEAUQUILESTBEAU",4))