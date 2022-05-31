from random import shuffle
def kill(t,u):
    out, key = t, [chr(i+65) for i in range(26)]
    while u not in out:
        shuffle(key)
        out = ""
        for c in t:
            ascii = ord(c)
            if ascii > 64 and ascii < 91:
                out += key[ascii-65]
            else:
                out += c
    return out
print(kill("QJFFO FMGX ZOH BOXGXH","PETITS"))