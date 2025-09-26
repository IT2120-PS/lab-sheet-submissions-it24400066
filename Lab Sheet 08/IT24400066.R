getwd()
setwd("/Users/kasunathauda/Desktop/IT24400066")
getwd()

#1
data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
attach(data)

Weight <- as.numeric(data$Weight.kg.)
weight <- Weight  
popmn <- mean(weight)
popsd <- sd(Weight)

#Q2
samples <- c()
n <- c()

set.seed(123)  
num_samples <- 25
sample_size <- 6

sample_means <- numeric(num_samples)
sample_sds   <- numeric(num_samples)

for (i in 1:num_samples) {
  s <- sample(Weight, sample_size, replace = TRUE)
  sample_means[i] <- mean(s)
  sample_sds[i]   <- sd(s)
}

#Q3
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means   <- sd(sample_means)


