def f(n,m):
    if n == 0 or m == 0:
        return n+m
    return f(n-1,m) + f(n,m-1)
print(f(30,30))
