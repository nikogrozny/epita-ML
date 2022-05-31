voisines = [ [1,3,4], [0,2,3] , [1,5] ,
              [0,1,5] , [0] , [2,3] ]
chemins = [[[0]]]
arrive, i = [], 0
while arrive == []:
    i += 1
    chemins.append( [c+[v] for c in chemins[i-1]
                  for v in voisines[c[-1]]] )
    arrive = [c for c in chemins[i]
              if c[-1] == 5]
print(arrive)