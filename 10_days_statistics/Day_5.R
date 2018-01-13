# Day 5 Poisson distribution

# A random variable, , follows Poisson distribution with mean of . Find the probability with which the random variable  is equal to .

lambda <- 2.5
k <- 5
e <- 2.71828

poisson_prob <- function(lambda, k){
  ((lambda ^ k) * (e ^ -lambda)) / (factorial(k))
}

prob <- poisson_prob(lambda, k)


cat(format(prob, 3, nsmall = 1))

# The manager of a industrial plant is planning to buy a machine of either type  or type . For each day’s operation:

#The number of repairs, , that machine  needs is a Poisson random variable with mean . The daily cost of operating  is .
#The number of repairs, , that machine  needs is a Poisson random variable with mean . The daily cost of operating  is .
#Assume that the repairs take a negligible amount of time and the machines are maintained nightly to ensure that they operate like new at the start of each day. Find and print the expected daily cost for each machine.


lambda_a <- 0.88
lambda_b <- 1.55

CostA <- 160 + 40 * (lambda_a + lambda_a ^ 2)
CostB <- 128 + 40 * (lambda_b + lambda_b ^ 2)
cat(format(CostA, 3, nsmall = 1))
cat('\n')
cat(format(CostB, 3, nsmall = 1))

#-------------

# Normal distribution

#In a certain plant, the time taken to assemble a car is a random variable, , having a normal distribution with a mean of  hours and a standard deviation of  hours. What is the probability that a car can be assembled at this plant in:
# Less than 19.5 hours
# Less than 20 and 22 hours 

pmean <- 20
sdev <- 2

# For a) less than 19.5 hours
a <- pnorm(19.5, mean = pmean, sd =  sdev)

# remeber for larger or equal you use the lower.tail = FALSE

b <- (pnorm(22, mean = pmean, sd =  sdev) - pnorm(20, mean = pmean, sd =  sdev))

cat(format(a, 3, nsmall = 1))
cat('\n')
cat(format(b, 3, nsmall = 1))
