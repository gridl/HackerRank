# Day 4
#The ratio of boys to girls for babies born in Russia is . If there is  child born per birth, what proportion of Russian families with exactly  children will have at least  boys?

#Write a program to compute the answer using the above parameters. Then print your result, rounded to a scale of  decimal places (i.e.,  format).
boy <- 1.09
girl <- 1
N <- 6
boy_atleast <- 3

p <- boy / (boy + girl)

combination <- function(n, x){
  return (factorial(n)/(factorial(x) * factorial(n-x)))
}

binomialDist <- function(X, N, P){
  return (combination(N, X) * P^X * (1-P)^(N-X))
}

leastBinomialDist <- function(R, N, P){
  result <- 0
  for (i in R:N){
    result <- result + binomialDist(i, N, P)
  }
  return (result)
}

res <- leastBinomialDist(boy_atleast, N, p)


cat(format(round(res, 3), nsmall=1))

# Part 2

# A manufacturer of metal pistons finds that, on average,  of the pistons they manufacture are rejected because they are incorrectly sized. What is the probability that a batch of pistons will contain:
#No more than  rejects?
# At least  rejects?

p <- 0.12
N <- 10



mostBinomialDist <- function(R, N, P){
  result <-0
  for (i in 0:R){
    result <- result + binomialDist(i, N, P)
  }
  return(result)
}




# for the no more than 2 rejects
no_more <- mostBinomialDist(2, N, p)
cat(format(round(no_more, 3), nsmall=1))
cat('\n')
# for the at least 2 rejects
at_least <- leastBinomialDist(2, N, p)
cat(format(round(at_least, 3), nsmall=1))
