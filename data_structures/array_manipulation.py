"""
You are given a list(1-indexed) of size ,
initialized with zeroes. You have to perform operations
on the list and output the maximum of final values of all
the  elements in the list. For every operation,
you are given three integers ,  and  and you have to add
value  to all the elements ranging from index
to (both inclusive).

For example, consider a list  of size .
The initial list would be  = [, , ] and after
performing the update  = , the new list would be  = [, , ].
Here, we've added value 30 to elements between indices 2 and 3.
Note the index of the list starts from 1.
"""
from itertools import accumulate
N, Q = map(int, input().split())

z_list = [0] * (N + 1)

for i in range(Q):
    a, b, num = map(int, input().split(" "))
    z_list[a - 1] += num
    z_list[b] -= num

print(max(accumulate(z_list)))