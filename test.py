import os
import sys

zombies_cnt = 0
zombies_cnt = int(input())
zombies_i = 0
zombies = []
while zombies_i < zombies_cnt:
    try:
        zombies_item = str(input())
    except:
        zombies_item = None
    zombies.append(zombies_item)
    zombies_i += 1


def zombieCluster(zombies):
    neighbours = 0
    for i in range(len(zombies)):
        for j in range(len(zombies)):
            if (zombies[i][j] == 1 and zombies[i][i] == 1):
                neighbours += 1
    if neighbours == len(zombies):
        return neighbours
    else:
        return (neighbours/2)


if __name__ == "__main__":
    f = open('zombie.txt', 'w')

    zombies_cnt = 0
    zombies_cnt = int(input())
    zombies_i = 0
    zombies = []
    while zombies_i < zombies_cnt:
        try:
            zombies_item = str(input()).split('')
        except:
            zombies_item = None
        zombies.append(zombies_item)
        zombies_i += 1
        print(zombies_item)

    print(zombies)

    f.close()
