plot(1:10, type = "l")
plot(1:10, type = "l", col = "orange")
x <- c(2, 4, 6, 8, 10, 12, 14, 16, 18, 20)
y <- c(50, 45, 55, 60, 65, 70, 75, 80, 85, 90)

plot(x, y, type = "b", col = "blue", pch = 16, main = "Scatter Plot", xlab = "x", ylab = "y")

# Define the x-coordinates for car age
x <- c(6, 8, 10, 8, 3, 11, 5, 13, 14, 11, 8, 5)

# Define the y-coordinates for car speed
y <- c(100, 88, 89, 90, 113, 105, 89, 96, 80, 79, 87, 88)

# Create a scatter plot to visualize the observation of cars
plot(x, y, main = "Observation of Cars", xlab = "Car Age", ylab = "Car Speed")

# Create vectors for the age and speed of cars on day one
x1 <- c(4, 6, 3, 8, 9, 7, 10, 5, 11, 2, 12, 7)
y1 <- c(80, 85, 89, 92, 94, 88, 97, 82, 78, 111, 86, 87)

# Create vectors for the age and speed of cars on day two
x2 <- c(1, 7, 8, 9, 4, 12, 2, 6, 15, 7, 11, 3, 14, 2, 10)
y2 <- c(105, 88, 84, 95, 94, 80, 105, 89, 90, 112, 79, 100, 80, 91, 97)

# Create a scatter plot of car age and speed for day one, with customized settings
plot(x1, y1, main = "Observation of Cars", xlab = "Car Age", ylab = "Car Speed", col = "red", cex = 2)

# Add points for the scatter plot of car age and speed for day two, with customized settings
points(x2, y2, col = "blue", cex = 2)

# Create a vector of pies
x <- c(12, 18, 24, 30)

# Create a vector of labels
mylabel <- c("Oranges", "Pineapples", "Grapes", "Watermelons")

# Display the pie chart with labels
pie(x, label = mylabel, main = "Fruit Distribution")

# x-axis values
x <- c("E", "F", "G", "H")

# y-axis values
y <- c(3, 5, 7, 9)

# Generate a vertical bar chart with four bars, labeled E, F, G, and H.
barplot(y, names.arg = x)

# Change the color of the bars to blue, enhancing the visual representation.
barplot(y, names.arg = x, col = "blue")
