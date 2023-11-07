#1 Q: Create a variable 'x' 
# with the value 10 and print its value.
X <- 5
cat("The value of the variable X is: ", x)

#2 Q: Write a program that calculates and 
# prints the sum of even numbers from 2 to 100.
x <- 2
answer <- 0
while (x < 101) {
answer <- answer + x
x <- x + 2
}
cat("The sum of even numbers from 2 to 100 is: ", answer)

#3 Q: Write a recursive function to calculate the factorial 
# of a given number and print the result for n=5.
fact_rec <- function(n) {
  if (n == 1) {
    return(1)
  } else  {
    return(n * fact_rec(n - 1))
  }
}

n = 5

cat("The factorial of ", n, " is: ", fact_rec(n))

#4 Q: Write a program to count the number of unique vowels in a given string 
# (case-insensitive) and print the count for the string "Hello, world!".

vowels <- c('a', 'e', 'i', 'o', 'u')
str <- "Hello, world!"
split = tolower(unlist(strsplit(str, "")))
vCount <- 0
for (l in split) {
  if (l %in% vowels) {
    vCount <- vCount + 1
    vowels <- vowels[!vowels %in% l]
  }
}
print(vCount)

#5 Q: Calculate and print the weighted average of a list of numbers 
# (given as 'numbers') with corresponding weights (given as 'weights').
numbers <- c(2, 4, 6, 8, 10)
weights <- c(.7, .4, .2, .9, .3)
wAvg <- function(n, w){
  numerator <- 0
  denominator <- 0
  prod_numWeight <- 0
  if (length(n) == length(w)){
    ind <- length(n)
    for (i in 1:ind){
        prod_numWeight <- (n[i] * w[i])
        numerator <- numerator + prod_numWeight
        denominator <- denominator + w[i]
    }
    cat("The weighted average of these value is: ", (numerator / denominator))
  } else  {
    print("Your 'number' and 'weight' vectors must contain the same number of elements")
  }
    
    
}
wAvg(numbers,weights)

#6 Q: Using the built-in iris dataset in R, perform data exploration by calculating 
# summary statistics and creating a scatter plot of sepal length and width.
data("iris")
summary(iris)
plot(iris$Sepal.Length, iris$Sepal.Width, xlab = "Sepal Length", ylab = "Sepal Width", main = "Scatter plot of sepel width & length")

#7 Q: Train a linear regression model using the 'mtcars' dataset to predict the 
# miles per gallon (mpg) based on horsepower (hp), and print the predicted 
# mpg for a new car with 150 horsepower. Once done
data("mtcars")
head(mtcars)
summary(mtcars)
str(mtcars)
plot(mtcars$hp, mtcars$mpg, main="Horsepower vs MPG",
     xlab = "Horsepower", ylab = "Miles Per Gallon", pch=19)
# Want to predict MPG, using HP
model <- lm(mpg ~ hp, data=mtcars)
# Check model's summary
summary(model)
# Make new predictions using the model
new_data <- data.frame(hp = 150)
predicted_mpg <- predict(model, new_data)
plot(model)

#8 Q: Using the iris dataset, split the data into training and testing sets,
# train a k-nearest neighbors (k-NN) classifier with k=3, make predictions 
# on the testing set, and calculate the accuracy of the model. 

# Load dataset
data("iris")
# Load libraries
library("caret")
library("class")
# Set seed, for reproducibility involving randoms
set.seed(123)

# Split the dataset between training and testing
splitTheIndex <- createDataPartition(iris$Species, p=0.7, list = FALSE)
training_set <- iris[splitTheIndex, ]
testing_set <- iris[-splitTheIndex, ]

# Train the k-NN model
knn_fit <- knn(train = training_set[, -5], test = testing_set[, -5], cl = training_set[, 5], k = 3)

# Make predictions
predictions <- predict(knn_fit, testing_set)

# Calculate the accuracy
confusion_matrix <- confusionMatrix(predictions, testing_set$Species)
accuracy <- sum(knn_fit == testing_set[, 5]) / nrow(testing_set)

# Print accuracy
cat("The accuracy of the k-NN classifier on the test set is: ", accuracy)

#9 Q: Perform principal component analysis (PCA) on the
# mtcars dataset to reduce the dimensionality, and create
# a scatter plot of the first two principal components.
data("mtcars")
library(stats)
summary(mtcars)
# Set seed for reproducibility involving randoms
set.seed(123)

pcaR <- prcomp(mtcars[, -c(1, 3, 5, 7)], scale = TRUE)

scores <- as.data.frame(pcaR$x[, 1:2])
plot(scores$PC1, scores$PC2, xlab = "PC1",  ylab = "PC2", main = "Scatter Plot of PC1")

#10 Q: Write a program in RStudio that preprocesses data
# using the iris dataset, trains a Naive Bayes classifier,
# and makes a prediction.
# Load required libraries
library(e1071)

# Load the iris dataset
data(iris)

# Preprocessing: Splitting the dataset into features and target variable
features <- iris[, -5] # Exclude the species column
target <- iris$Species

# Train a Naive Bayes classifier
nb_model <- naiveBayes(features, target)

# Create new data for prediction (example)
new_data <- data.frame(
  Sepal.Length = 5.1,
  Sepal.Width = 3.5,
  Petal.Length = 1.4,
  Petal.Width = 0.2
)

# Make a prediction using the trained model
prediction <- predict(nb_model, new_data)

# Print the predicted category
print(prediction)

