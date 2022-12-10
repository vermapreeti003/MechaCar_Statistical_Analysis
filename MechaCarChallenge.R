library(dplyr)
library(tidyverse)
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# Part 1
# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar)
# Determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data= MechaCar))
# Part 2
# Creates a total_summary dataframe
#Import and read "Suspension_Coil.csv" file
Suspension_coil<- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- Suspension_coil %>% summarize(Mean=mean(PSI),
                                               Median=median(PSI),
                                               Variance=var(PSI),
                                               SD=sd(PSI), 
                                               Num_Coil=n(), .groups = 'keep')
total_summary 
# Group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- Suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                             Median=median(PSI), 
                                                                             Variance=var(PSI), 
                                                                             SD=sd(PSI), 
                                                                             Num_Coil=n(), .groups = 'keep')
lot_summary

# T-Test to determine if the PSI across all manufacturing lots is statistically different from the population mean 
t.test(Suspension_coil$PSI,mu=1500)
# T-Test o determine if the PSI for each manufacturing lot is statistically different from the population 
# Lot 1 T-Test 
t.test(x=subset(Suspension_coil,Manufacturing_Lot == "Lot1")$PSI,mu=1500)

# Lot 2 T-Test
t.test(x=subset(Suspension_coil,Manufacturing_Lot == "Lot2")$PSI,mu=1500)

# Lot 3 T-Test
t.test(x=subset(Suspension_coil,Manufacturing_Lot == "Lot3")$PSI,mu=1500)