def successeurs(l):
    sux = {}
    for e in l:
        for v in e:
            if not v in sux:
                sux[v] = set()
            sux[v].add((e-{v}).pop())
    return sux