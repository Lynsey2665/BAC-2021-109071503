## read file customer.txt by read.table(file, header = T, sep="")
customer<-read.table("C:/Users/dakin/Desktop/customers.txt",header = TRUE,sep="")
## check our dataframe and let age become a variable called ages
ages<-customer$age
## therefore, we can call value by index
length(ages)

## Question 1: 5th element in the original list of ages
ages[5]
## sort ages in increasing order
sorted_ages<-sort(ages)
## Question 2: fifth lowest age
sorted_ages[5]
## Question 3: Extract the five lowest ages together, we directly call by index
sorted_ages[1:5]
## sort ages in decreasing order by sort(variable, decreasing = FALSE, …)
decreasing_sorted_ages<-sort(ages, decreasing = TRUE)
## Question 4: Get the five highest ages by first sorting them in decreasing order first
decreasing_sorted_ages[1:5]
## Question 5: the average (mean) age
mean(ages)
## Question 6: the standard deviation of ages
sd(ages)
## Question 7: Make a new variable called age_diff, with the difference between each age and the mean age
age_diff<- ages -  mean(ages)
age_diff
mean(abs(age_diff))
## Question 8: the average “difference between each age and the mean age”, its value should be very close to zero
mean(age_diff)
## Question 9: Visualize the raw data
hist(ages)
plot(density(ages))
boxplot(ages)
stripchart(ages,add = TRUE)
