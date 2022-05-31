def factorec(n):
    return factorec(n-1)*n if n>1 else 1
print(factorec(6))