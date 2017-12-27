"""
Given an array of size N and a number d, rotate the array to the left by d
i.e. shift the array elements to the left by d.
Ex: The array [1, 2, 3, 4, 5] after rotating by 2 gives [3, 4, 5, 1, 2].
"""
N, rotations = map(int, input().split())
nums = list(input().split())

rotated = nums[rotations % N : N] + nums[0 : rotations % N]

print(*rotated, sep = " ")
