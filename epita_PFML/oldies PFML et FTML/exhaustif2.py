def exhaustif(g):
    if len(g) == 0:
        return [[]]
    else:
        s = []
        for x in exhaustif(g[1:]):
            s.append(x)
            if all(len(y & g[0]) == 0 for y in x):
                s.append(x+[g[0]])
        return s