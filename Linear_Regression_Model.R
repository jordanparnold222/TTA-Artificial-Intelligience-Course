# Linear regression model training with the mtcars dataset
data(mtcars) # Load the mtcars dataset
X <- mtcars$hp # Predictor variable (horsepower)
Y <- mtcars$mpg # Predictor variable (miles per gallon)

# Train the linear regression model
model <- lm(Y ~ X, data = mtcars)

# Print the model summary
summary(model)
plot(model)



