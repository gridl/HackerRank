# Define negative binomial distribution
def Neg_Binomial(n, p):
    return (1-p)**(n-1) * p

# Input from stdin
numerator, denominator = [int(num) for num in input().split(" ")]
p = numerator / denominator

# Number of inspection
N = int(input())

# Probability of first defect found during the first N inspections.
print(round(sum([Neg_Binomial(i, p) for i in range(1, N+1)]), 3))