
N, rotations = map(int, input().split())
nums = list(input().split())

rotated = nums[rotations % N : N] + nums[0 : rotations % N]

print(*rotated, sep = " ")
