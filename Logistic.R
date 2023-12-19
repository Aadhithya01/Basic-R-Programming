# Logistic Regression
# Select columns "am", "cyl", "hp", and "wt" from the mtcars dataset
input <- mtcars[, c("am", "cyl", "hp", "wt")]
# Print column names and display the first 5 rows of the selected columns
colnames(mtcars)
head(input, 5)

# Fit a logistic regression model where am (automatic or manual transmission) is the binary response variable
# and cyl, hp, and wt are predictors
am.data = glm(am ~ cyl + hp + wt, data = input, family = binomial)
# Display summary statistics of the logistic regression model
summary(am.data)