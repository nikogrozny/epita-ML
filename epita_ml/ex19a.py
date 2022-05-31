voisines = [ [1,2,3,4], [0,2,3] , [0,1,5] ,
              [0,1,5] , [0] , [2,3] ]
plusCourts = [[] for i in range(6)]
plusCourts[0] = [[0]]
for step in range(1,6):
    for ville in range(1,6):
        if plusCourts[ville] == []:
            for v in voisines[ville]:
                c = plusCourts[v]
                if c != [] and len(c[0]) == step:
                    for x in c:
                        plusCourts[ville].append(
                            x+[ville])
print(plusCourts[5])