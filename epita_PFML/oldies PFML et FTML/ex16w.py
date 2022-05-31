def fibonacci(n):
    x = 1 if n <= 1 else fibonacci(n-1)+fibonacci(n-2)
    return x

print(fibonacci(100))