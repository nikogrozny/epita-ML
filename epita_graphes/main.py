from typing import List, Dict
from math import log, ceil

graph_1: Dict[int, List[int]] = {0: [1, 3], 1: [0, 4], 2: [3, 5], 3: [0, 2, 4, 5], 4: [1, 3, 5], 5: [2, 3, 4]}


def exo1(prefix: List[int], n: int):
    if n == 0:
        print(prefix)
    else:
        exo1(prefix + [0], n - 1)
        exo1(prefix + [1], n - 1)


def exo2(n: int):
    for m in range(2**n):
        print([m % 2**(n-i) // 2**(n-i-1) for i in range(n)])


def exo3(prefix: List[int], n: int):
    if n == 0:
        print(prefix)
    else:
        print(prefix, "+ ?")
        exo3(prefix + [0], n - 1)
        exo3(prefix + [1], n - 1)


def exo4(graph: Dict[int, List[int]], prefix: List[int], n: int):
    if n == 0:
        if all([prefix[u] == 0 or prefix[v] == 0 for u in graph for v in graph[u]]):
            print(prefix)
    else:
        # print(prefix, "+ ?")
        exo4(graph, prefix + [0], n - 1)
        exo4(graph, prefix + [1], n - 1)


def exo5(graph: Dict[int, List[int]], prefix: List[int], n: int):
    if n == 0:
        print(prefix)
    else:
        print(prefix, "+ ?")
        exo5(graph, prefix + [0], n - 1)
        if not any([u in graph[len(prefix)] for u in range(len(prefix)) if prefix[u] == 1]):
            exo5(graph, prefix + [1], n - 1)


def exo5bis(graph: Dict[int, List[int]], prefix: List[int], n: int):
    if n == 0:
        print(prefix)
    else:
        print(prefix, "+ ?")
        if not any([u in graph[len(prefix)] for u in range(len(prefix)) if prefix[u] == 1]):
            exo5(graph, prefix + [1], n - 1)
        exo5bis(graph, prefix + [0], n - 1)


def exo7(graph: Dict[int, List[int]], prefix: List[int], n: int, stable_max: List[List[int]]):
    if n == 0:
        stable_max.append(prefix)
    else:
        print(prefix, "+ ?")
        exo7(graph, prefix + [0], n - 1, stable_max)
        if not any([u in graph[len(prefix)] for u in range(len(prefix)) if prefix[u] == 1]):
            exo7(graph, prefix + [1], n - 1, stable_max)
    if prefix == []:
        print([s for s in stable_max if sum(s) == sum(max(stable_max, key=sum))])



def exo8(graph: Dict[int, List[int]], prefix: List[int], n: int, stable_max: List[List[int]]):
    if n == 0:
        stable_max.append(prefix)
    else:
        print(prefix, "+ ?")
        if not any([u in graph[len(prefix)] for u in range(len(prefix)) if prefix[u] == 1]):
            exo8(graph, prefix + [1], n - 1, stable_max)
        if stable_max == [] or sum(prefix) + n - len(prefix) >= sum(max(stable_max, key=sum)):
            exo8(graph, prefix + [0], n - 1, stable_max)
    if prefix == []:
        print([s for s in stable_max if sum(s) == sum(max(stable_max, key=sum))])




if __name__ == '__main__':
    # exo1([], 6)
    # exo2(6)
    # exo3([], 6)
    exo4(graph_1, [], 6)
    # exo5(graph_1, [], 6)
    # exo5bis(graph_1, [], 6)
    #exo7(graph_1, [], 6, [])
    #exo8(graph_1, [], 6, [])
