#Set working directory
setwd("/Users/astpuri/Desktop/analytics_edge")

#Load data file. Data source is: https://apps.who.int/gho/data/node.main
who <- read.csv("WHO.csv")

#Get structure of the data
str(who)

#Find the coutry with highest literacy rate
max_literacy_rate_index <- which.max(who$LiteracyRate)
cat(paste('','','Country with highest literacy rate is:', 
who$Country[max_literacy_rate_index],'', sep="\n"))

#Find the average child mortality rate of countries in each region
cat("\n Child mortality rate of countries in each region: \n")
print (
    tapply(who$ChildMortality, who$Region, mean)
)

