# Install and load the ggplot2 package
install.packages("ggplot2")
library(ggplot2)

# Load the iris dataset
data(iris)

# Display the first 6 rows of the iris dataset
head(iris)

# Create a scatter plot using ggplot2 to visualize Petal.Length vs. Petal.Width with color indicating Species
ggplot(iris, aes(Petal.Length, Petal.Width, color = Species)) + geom_point()

# Perform k-means clustering on the Petal.Length and Petal.Width columns with 3 clusters
irisCluster <- kmeans(iris[, 3:4], 3, nstart = 20)

# Print information about the clustering results
print(irisCluster)

# Create a confusion matrix to compare the clustering results with actual species labels
conf_matrix <- table(irisCluster$cluster, iris$Species)

# Calculate accuracy based on the confusion matrix
accuracy = sum((diag(conf_matrix)))/sum(conf_matrix)

# Print the accuracy
print(accuracy)
