# Data exploration of Iris Dataset
data(iris) #Load Iris dataset

# Display the structure of the dataset
str(iris)

# Calculate and print the summary statistics
summary(iris)

plot(iris$Petal.Length, iris$Petal.Width, xlab = "Petal Length", ylab = "Petal Width", 
     main = "Scatter Plot of Petal Length vs. Width")

# Calculate the correlation matrix
cor_matrix <- cor(iris[, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")])

# Visualize the the correlations
heatmap(cor_matrix, main = "Correlation Matrix of Iris Dataset")
