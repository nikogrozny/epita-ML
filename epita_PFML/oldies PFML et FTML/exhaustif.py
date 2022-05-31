def exhaustif(g):
    if len(g) == 0:
        return [[]]
    else:
        s = []
        for x in exhaustif(g[1:]):
            s.append(x)
            s.append(x+[g[0]])
        return s