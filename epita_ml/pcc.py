voisines = [ [1,3,4], [0,2,3] , [1,5] ,
              [0,1,5] , [0] , [2,3] ]
chemins = [[[0]]]
for i in range(1,6):
    chemins.append( [c+[v] for c in chemins[i-1]
                  for v in voisines[c[-1]]] )
print(chemins[1])
print(chemins[2])
