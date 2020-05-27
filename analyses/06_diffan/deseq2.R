##BADLY CODED SOLUTION

table29 <- read.table("29.txt", header=FALSE, sep="", stringsAsFactors=FALSE)
table30 <- read.table("30.txt")
table31 <- read.table("31.txt")
table32 <- read.table("32.txt")
table33 <- read.table("33.txt")
counts <- data.frame(cbind(table29,table30[2],table31[2],table32[2],table33[2]))

numbers <- c(29:33)
