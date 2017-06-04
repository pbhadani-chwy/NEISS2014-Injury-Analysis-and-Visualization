df = read.csv("NEISS2014.csv")

library(ggplot2)
str(df)

df1 = df[which(df$age < 110), ]

ggplot(df1, aes(x = age, col = age)) + geom_histogram(binwidth = 10, aes(y = ..density..)) + facet_wrap(~diag, ncol = 5)
ggplot(df1, aes(x = diag, col = diag)) + geom_histogram(binwidth = 1, aes(y = ..density..)) + facet_wrap(~race, ncol = 5)

