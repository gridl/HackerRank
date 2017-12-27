N = int(input())

strings = []
for i in range(N):
    line = input()
    strings.append(line)

def findOcurrences(queried, source):
    count = 0
    for string in strings:
        if string == queried:
            count +=1
    return count

queries = int(input())
for j in range(queries):
    query = input()
    occurrences = findOcurrences(query, strings)
    print(occurrences)