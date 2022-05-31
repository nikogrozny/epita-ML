def badrec(x):
    return badrec(x/2) if x > 0 else 1
print(badrec(3))