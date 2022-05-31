def sacados(liste,i) :
    if len(liste) == 0:
        return i == 0
    else :
        return (sacados(liste[1:],i)
                or sacados(liste[1:],i-liste[0]))
print(sacados([2, 7, -1, 9],16))
print(sacados([2, 7, -1, 9],4))