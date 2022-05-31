def sumdivs(n):
    return sum([i for i in range(1,n) if n%i == 0])

p = 1000
amic_num = [-1 for i in range(p)]
for i in range(p):
    if amic_num[i] == -1:
        j = sumdivs(i)
        if i != j and sumdivs(j) == i:
            amic_num[i] = i
            amic_num[j] = j
        else :
            amic_num[i] = 0
            if j < 1000 and amic_num[j] == -1:
                amic_num[j] = 0
print([i for i in amic_num if i>0])