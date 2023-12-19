library(rpart)
library(rpart.plot)
data(iris)
set.seed(123)

# Using sample_frac directly to get a fraction of the data
training_indices <- sample(nrow(iris), 0.7 * nrow(iris))
train_data <- iris[training_indices, ]
test_data <- iris[-training_indices, ]

# Check the structure of train_data
#str(train_data)

treemodel <- rpart(Species ~., data = train_data, method = "class")
rpart.plot(treemodel)

prediction <- predict(treemodel, newdata = test_data)
print(prediction)

# Extract predicted class probabilities
predicted_class <- colnames(prediction)[max.col(prediction)]
print(predicted_class)

conf_matrix <- table(predicted_class, test_data$Species)

print(conf_matrix)

accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
print(accuracy)
