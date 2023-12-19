# Load the dataset from a CSV file
dataset <- read.csv("C:\\Users\\aadhi\\Desktop\\R\\data-marketing-budget-12mo.csv")

# Display the first 5 rows of the dataset
head(dataset, 5)

# Display the number of rows and columns
print(paste("Number of rows:",nrow(dataset)))
print(paste("Number of cols:",ncol(dataset)))

# Simple Linear Regression
# Fit a linear model where Sales is the response variable and Spend is the predictor
simple.fit = lm(Sales ~ Spend, data = dataset)
# Display summary statistics of the simple linear regression model
summary(simple.fit)

# Multiple Linear Regression
# Fit a linear model where Sales is the response variable and Spend and Month are predictors
multi.fit = lm(Sales ~ Spend + Month, data = dataset)
# Display summary statistics of the multiple linear regression model
summary(multi.fit)
