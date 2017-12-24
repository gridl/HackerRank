# Day 0: Mean, Median, and Mode

# Selecting standard input
con <- file('stdin', open='r')

# We don't need the first input 
data_line <- readLines(con)[[2]]

# splitting the data into individual string
split_data <- strsplit(data_line, " ")

# String to integer conversion
data <- as.numeric(unlist(split_data))

# get mode function
getmode <- function(v) {
  v <- sort(v)
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}


mean_value <- mean(data)
median_value <- median(data)
mode_value <- getmode(data)

cat(mean_value, sep="\n")
cat(median_value, sep="\n")
cat(mode_value, sep="\n")

# ---------------------
# B: Weighted mean

con <- file('stdin', open='r')

inputs <- readLines(con)

# We don't need the first input 
data <- inputs[[2]]
weights <- inputs[[3]]

# Converts string to vector
stringToVector <- function(string){
  return (as.numeric(unlist(strsplit(string, " "))))
}

result <- sum(stringToVector(data) * stringToVector(weights)) / sum(stringToVector(weights)) 

# Formatting result 
cat(format(round(result, 1), nsmall=1))