voisines = [ [1,3,4], [0,2,3] , [1,5] ,
              [0,1,5] , [0] , [2,3] ]
plusCourt = [None]*6
plusCourt[0] = [0]
for step in range(1,6):
    for ville in range(1,6):
        if plusCourt[ville] == None:
            for v in voisines[ville]:
                c = plusCourt[v]
                if c != None and len(c) == step:
                    plusCourt[ville] = c+[ville]
print(plusCourt[5])