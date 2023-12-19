# Load required library
library(e1071)

# Load the iris dataset
data(iris)

# Plot the entire iris dataset
plot(iris)

# Display the first 5 rows of the iris dataset
print(head(iris, 5))

# Scatter plot of Sepal.Length vs. Sepal.Width with colors based on Species
plot(iris$Sepal.Length, iris$Sepal.Width, col = iris$Species)

# Randomly sample 100 rows for training data
s = sample(nrow(iris), 100)

# Select relevant columns for training and testing datasets
col <- c("Petal.Length", "Petal.Width", "Species")
iris_train <- iris[s, col]
iris_test <- iris[-s, col]

# Fit a Support Vector Machine (SVM) model with a linear kernel
svmfit = svm(Species ~ ., data = iris_train, kernel = "linear")

# Display information about the SVM model
print(svmfit)

# Plot the SVM decision boundaries along with the training data
plot(svmfit, iris_train[, col])

# Make predictions on the test data
p = predict(svmfit, iris_test[, col], type = "class")

# Plot the predicted values
plot(p)

# Create a confusion table and display the classification accuracy
table(p, iris_test[, 3])
accuracy <- mean(p == iris_test[, 3])
print(paste("Classification Accuracy:", round(accuracy, 2)))
