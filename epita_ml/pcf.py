voisines = [ [1,3,4], [0,2,3] , [1,5] ,
              [0,1,5] , [0] , [2,3] ]
def chemin(k,maxl):
    if maxl == 0 :
        trouve = (k == 0)
    else :
        trouve = any(chemin(i,maxl-1)
                     for i in voisines[k])
    if trouve :
        print(k)
    return trouve

chemin(5,2)