# MechaCar_Statistical_Analysis
Apply statistics and hypothesis testing to analyze a series of datasets from the automotive industry
## Overview
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. In this project, we are going to review the production data by completing the following tasks:

  * Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
  * Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
  * Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
  * Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.
## Linear Regression to predict MPG

The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle.

Using lm() we have created a multiple linear regression model and in order to determine the p-value and r-squared value we have used the summary() function.


![ss1](https://user-images.githubusercontent.com/111541268/206868069-dacdc00d-1a0d-49d0-b53f-b84a0be75152.png)
   Figure 1: Slopes values of multiple independent variables

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Figure 1 shows that all independent variables have a slope different than zero. However, one can notice that the slope of “vehicle length” and “ground clearance” are significantly bigger than other slopes while the slope of AWD is negative. Which indicates that “vehicle length” and “ground clearance” accounts more than other independent variable for the the total variance in the dependent variable “mpg”.

![ss2](https://user-images.githubusercontent.com/111541268/206868075-2b3faade-342b-4b2d-9b99-3e336438bd0d.png)
   Figure 2: Output of linear regression to predict MPG


This could be confirmed by looking at the values of Pr(>|t|) in Figure 2:

  * The p-value for “vehicle length” is 2.60e-12 while it is 5.21e-08 for “ground clearance” which are significantly less than the assumed significance level of 5%.       Thus we can say that these coefficients have a significant impact on the mpg values of the dataset.
  * The p-value for “vehicle_weight” is 0.0776, for “spoiler_angle” it is 0.3069 and 0.1852 for “AWD”. All these values are bigger than the assumed significance level     of 5%. Therefore, theses variables do not have a statistically significant relationship with the response variable in the model.

Is the slope of the linear model considered to be zero? Why or why not?

 From figure 1 we can see that the slopes of each coefficients are different than zero. This is not enough to say that the slope of the linear model is not zero since  we have one negative slope. However, the p-value (Fig.2) can confirm that since it’s equal 5.35e-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The r-squared value for this linear regression model is equal 0.7149 (Fig.2), which means that this linear model will predict mpg MechaCar prototypes to 70% accuracy. In other words, 70% of all predictions using this model will be correct.

## Summary Statistics on Suspension Coils

The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots.

We have created a summary statistics table to show:

  * The suspension coil’s PSI continuous variable across all manufacturing lots (Fig.3)
  * The following PSI metrics for each lot: mean, median, variance, and standard deviation. (Fig4)


![ss3](https://user-images.githubusercontent.com/111541268/206869460-913c0991-b22d-439a-b023-379e43c06d90.png)
     Figure 3: Summary Statistics of the suspension coil's PSI



![ss4](https://user-images.githubusercontent.com/111541268/206869472-a1e6e109-9f98-4698-aa17-29ec69f88218.png)
      Fiogure 4: Summary Statistics on PSI of the suspension coils per lot



The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

By looking at the summary statistics across all manufacturing lots (Fig.3), the variance is 62.29356 < 100 which meets the design specification. Therefore, the current manufacturing data meet this design specification for all manufacturing lots in total.
However, the summary statistics for each lot (Fig.4) shows that variance of the suspension coils in lot 3 is 170.286 which is significantly higher than 100 and definitely not meeting the design specification.

