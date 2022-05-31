from random import shuffle
def cipher(s):
    key = [chr(i+65) for i in range(26)]
    shuffle(key)
    out = ""
    for c in s:
        ascii = ord(c)
        if ascii > 64 and ascii < 91:
            out += key[ascii-65]
        else:
            out += c
    return out
        
print(cipher("BONNE NUIT LES PETITS"))