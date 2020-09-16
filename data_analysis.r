#Set working directory
setwd("/Users/astpuri/Desktop/analytics_edge")

#Load data file
who <- read.csv("WHO.csv")

#Get structure of data
str(who)

#Find the coutry with highest literacy rate
max_literacy_rate_index <- which.max(who$LiteracyRate)
cat(paste('','','Country with highest literacy rate is:', 
who$Country[max_literacy_rate_index],'', sep="\n"))

