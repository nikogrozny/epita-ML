def exhaustif(g):
    global compteur
    if len(g) == 0:
        return [[]]
    else:
        s = []
        for x in exhaustif(g[1:]):
            s.append(x)
            compteur += 1
            if all(len(y & g[0]) == 0 for y in x):
                s.append(x+[g[0]])
                compteur += 1
        return s


    
from random import randrange
graphe = []
for taille in range(30):
    compteur = 0
    graphe.append({randrange(30),randrange(30)})
    exhaustif(graphe)
    print(compteur)