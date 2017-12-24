#Reading input from STDIN
f <- file("stdin")
open(f)
data <- c()
while(length(line <- readLines(f,n=1, warn = FALSE)) > 0) {
  data <- c(data, line)
}

#Reading input from STDIN, method 2
data <- read.table(file("stdin"), header=F, fill=T, sep="\t")

#Process the data
...

#Output to STDOUT, line by line
cat(output_data, sep="\n") 