#Day 5: Normal distribution II

import math

def NormalDist(x):
    return 0.5*(1+ math.erf((x - mean) / (sd * math.sqrt(2))))

# Input data

mean, sd = list(map(float, input().split(" ")))
passed = float(input())
failed = float(input())

# Display answer
print(round(100 - NormalDist(passed) * 100, 2))
print(round(100 - NormalDist(failed) * 100,  2))
print(round(NormalDist(failed) * 100, 2))