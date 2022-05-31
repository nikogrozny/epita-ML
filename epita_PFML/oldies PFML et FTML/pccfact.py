def chemin(k,max):
    if max == 0 :
        trouve = (k == 0)
    else :
        trouve = any(chemin(i,max-1)
                     for i in voisines[k])
    if trouve :
        print(k)
    return trouve