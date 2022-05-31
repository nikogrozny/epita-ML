class Graphe:
    def __init__(self,sommets,aretes):
        self.sommets = frozenset(sommets)
        self.aretes = set(aretes)
    def __contains__(self,e):
        return e in self.aretes
    def _set_aretes(self,aretes):
        self._aretes = set()
        while len(aretes) > 0:
            a = aretes.pop()
            if a.issubset(self.sommets):
               self._aretes.add(a)
    def _get_aretes(self):
        return self._aretes
    aretes = property(_get_aretes,_set_aretes)