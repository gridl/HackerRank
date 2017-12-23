def compare(alice, bob):
    bob_score = [1 for a, b, in zip(alice,bob) if a < b]
    alice_score = [1 for a, b in zip(alice, bob) if a>b]
    results = [sum(alice_score), sum(bob_score)]
    return results

def diag(n, a):
    diag1 = 0
    diag2 = 0
    for i in range(n):
        diag1 += a[i][i]
        diag2 += a[i][n-i-1]
    return abs(diag1 - diag2)


def make_hour(arr):
    sums = []
    for i in range(4):
        for j in range(4):
            hour = [arr[i][j], arr[i][j + 1], arr[i][j + 2], arr[i + 1][j + 1], arr[i + 2][j], arr[i + 2][j + 1],
                    arr[i + 2][j + 2]]
            sums.append(sum(hour))
    print(sums)
    return (max(sums))

def birthdayCakeCandles(n, ar):
    try:
        if n == len(ar):
         height = [i for i in ar if i == max(ar)]
         return len(height)
    except:
        raise Exception ('Values not provided properly')


def phone(coins):
    result = sum([i/2 for i in coins])
    return result

def chase(arr, q):
    res = []
    for i in range(q):
        line = arrange[i]
        if abs(line[2] - line[0]) < abs(line[2] - line[1]):
            res.append('Cat A')
        elif abs(line[2] - line[0]) > abs(line[2] - line[1]):
            res.append('Cat B')
        elif abs(line[2] - line[0]) == abs(line[2] - line[1]):
            res.append('Mouse C')
    return res


if __name__ == "__main__":
    #alice = list(map(int, input().strip().split(" ")))
    #arr = []
    #for arr_i in range(6):
        #arr_t = [int(arr_temp) for arr_temp in input().strip().split(' ')]
        #arr.append(arr_t)


    # Complete this function

    q = int(input().strip())
    arrange = []
    for a0 in range(q):
        x, y, z = input().strip().split(' ')
        line = [int(x), int(y), int(z)]
        arrange.append(line)
    res = chase(arrange, q)
    print(res)