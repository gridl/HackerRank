import os
"""Starting from a given node, it will find
the individuals that are infected and 
their 'Zombie Pals' and the pals of these ones too...
Infected zombies that know they are a zombie are identified as 1
and non infected individuals are the 0.
At all times every infected individual knows he/she is a zombie.

I am using deque structures as they allow me to drop/add elements
on the left and right which proved rather efficient while dealing with 
a 'union find' kind of problem.
"""

def identify_groups(n, matrix):
    infected = set()
    zombie_cluster_count = 0
    for node in range(n):
        if node not in infected:
            zombie_cluster: {int} = find_zombie_cluster(node, matrix)
            infected.update(zombie_cluster)
            zombie_cluster_count += 1
    return (zombie_cluster_count)


def find_zombie_cluster(node: int, individuals: [[int]]) -> set:
    from collections import deque

    zombie_cluster = {node}
    knows_zombie = deque()
    knows_zombie.append(node)

    while knows_zombie:
        node = knows_zombie.popleft()

        for zombiePal, are_zombiePals in enumerate(individuals[node]):
            if are_zombiePals and zombiePal not in zombie_cluster:
                zombie_cluster.add(zombiePal)
                knows_zombie.append(zombiePal)

    return zombie_cluster

if __name__ == "__main__":
    q = int(input().strip())
    groups = []
    for line in range(q):
        line = list(map(int, input().strip().strip('')))
        groups.append(line)
    clusters = identify_groups(q, groups)
    print(clusters)