# Day1 Quartiles

f <- file("stdin", open = "r")
lines <- readLines(f)

inp <-lines[[2]]# Converts string to vector

stringToVector <- function(string){
  return (as.numeric(unlist(strsplit(string, " "))))
}

data <-stringToVector(inp)



quart <- function(x) {
  x <- sort(x)
  n <- length(x)
  m <- (n+1)/2
  if (floor(m) != m) {
    l <- m-1/2; u <- m+1/2
  } else {
    l <- m-1; u <- m+1
  }
  o <- c(Q1=median(x[1:l]), median(x) ,Q3=median(x[u:n]))
  return (o)
}

x <- quart(data)

cat(x, sep="\n")

# Day 1 B; interquartile range

con <- file('stdin', open = 'r')
stringToVector <- function(string){
  return (as.numeric(unlist(strsplit(string, " "))))
}

inputs <- readLines(con)

data <- stringToVector(inputs[[2]])
frequencies <- stringToVector(inputs[[3]])

full_data <- c()

for (i in 1:length(data)){
  full_data <- c(full_data, rep.int(data[i], frequencies[i]))
}

quart <- function(x) {
  x <- sort(x) # first sort the elements
  n <- length(x) # get the no of elements
  m <- (n + 1) / 2 # find the mid section of the data
  if (floor(m) != m) {
    lower <- m - 1/2; upper <- m + 1/2
  } else {
    lower <- m - 1; upper <- m + 1
  }
  quart_range <- median(x[upper:n]) - median(x[1:lower])
  return (quart_range)
}

cat(format(round(quart(full_data), 1), nsmall = 1))


# Day 1 C: Standard deviation
con <- file('stdin', open='r')

stringToVector <- function(string){
  return (as.numeric(unlist(strsplit(string, " "))))
}

std <- function(v){
  return (sd(v) * sqrt((length(v)-1)/length(v)))
}

inputs <- readLines(con)

data <- stringToVector(inputs[[2]])

cat(format(round(std(data), 1), nsmall=1))