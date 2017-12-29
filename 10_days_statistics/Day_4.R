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