def chaine(couplage,sommets,aretes):
    isoles = {x for x in sommets 
            if all(x not in e for e in couplage)}
    v =  isoles.pop()
    reste,voisin,w,sol = sommets.copy(),None,v,[]
    while reste != set() and voisin not in isoles:
        voisin = {y for y in reste 
                if {y,w} in aretes}.pop()
        sol.append({w,voisin})
        reste.remove(voisin)
        if voisin not in isoles:
            w =  {y for y in reste 
                if {y,voisin} in couplage}.pop()
            reste.remove(w)
    return(sol)



couplage = [{2,3}]
sommets = {1,2,3,4}
aretes = [{1,2},{2,3},{3,4}]
print(chaine(couplage,sommets,aretes))