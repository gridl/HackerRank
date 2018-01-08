# Day6: Central Limit Theorem I

#A large elevator can transport a maximum of  pounds. Suppose a load of cargo containing  boxes must be transported via the elevator. The box weight of this type of cargo follows a distribution with a mean of  pounds and a standard deviation of pounds. Based on this information, what is the probability that all  boxes can be safely loaded into the freight elevator and transported?

weight <- 9800
boxes  <- 49
bmean <- 205
stdev <- 15

prob <- pnorm(weight, mean = (bmean * boxes), sd = stdev * sqrt(boxes))

cat(round(prob, 4))

# Central theorem II

#  The number of tickets purchased by each student for the University X vs. University Y football game follows a distribution that has a mean of  and a standard deviation of .

#A few hours before the game starts,  eager students line up to purchase last-minute tickets. If there are only  tickets left, what is the probability that all  students will be able to purchase tickets?

tmean <- 2.4
stdev <- 2.0

students <- 100
left <-250


prob <- pnorm(250, mean = (tmean * students), sd = stdev * sqrt(students))

cat(round(prob, 4))


# Central limit theorem III

# You have a sample of  values from a population with mean  and with standard deviation . Compute the interval that covers the middle  of the distribution of the sample mean; in other words, compute  and  such that . Use the value of . Note that  is the z-score.

n <- 100
sample_mean <- 500
sd_pop <- 80

z <- 1.96

sd_sample <- sd_pop / sqrt(n)

error <- z * sd_sample

left <- sample_mean - error
right <- sample_mean + error

cat(round(left, 3))
cat('\n')
cat(round(right,3))
