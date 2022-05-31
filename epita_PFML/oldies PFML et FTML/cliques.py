def build_graph_from_file(f):
    data = {int(x.split(":")[0][8:]):set(x.split(":")[1][:-1].split(",")) for x in f}
    return {q:{p for p in data if len(data[p]&data[q])>0} for q in data}

def quick1(g):
    w=min(g,key=lambda v:len(g[v]))
    return g if g[w]==g.keys() else quick1({v:g[v]-{w} for v in g.keys()-{w}})

def quick2(g):
    l=sorted([v for v in g if len(g[v])<len(g)],key=lambda v:len(g[v]))
    return g if l==[] else quick2({v:g[v]&g[l[-1]] for v in g[l[-1]]})

graphe = build_graph_from_file(open("dataExam.csv",'r'))
print(quick1(graphe).keys())
print(quick2(graphe).keys())
