def sacados(liste,i) :
    return i == 0 if len(liste) == 0 else sacados(
        liste[1:],i) or sacados(liste[1:],i-liste[0])