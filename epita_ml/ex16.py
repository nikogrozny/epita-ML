def fibonacci(n):
    (a,b) = (1,1) if n == 1 else fibonacci(n-1)
    return b, a+b

print(fibonacci(100)[0])