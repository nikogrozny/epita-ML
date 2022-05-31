def deg(v,reste):
    return len([x for x in sommets if {v,x} in reste])
def glouton(couplage,sommets,aretes):
    sol,reste = [],aretes.copy()
    while(len(reste)>0):
        v = sorted([s for s in sommets 
    if deg(s,reste)>0],key=lambda x:deg(x,reste))[0]
        w = [y for y in sommets if {v,y} in reste][0]
        sol.append({v,w})
        reste = [e for e in reste 
            if v not in e and w not in e]
    return(sol)





couplage = [{2,3}]
sommets = [1,2,3,4]
aretes = [{1,2},{2,3},{3,4}]
print(glouton(couplage,sommets,aretes))