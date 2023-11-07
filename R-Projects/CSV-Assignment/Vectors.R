# Vector of strings
veggies <- c("broccoli", "squash", "Carrot")
# Print veggies vector
veggies

# Vector with numerical values in a sequence
nums <- 1:25
nums
# Access specific items in a vector
veggies[1]

# Change item value in a vector
fruit <- c("apple", "orange", "banana")
fruit
fruit[2] <- "mango"
fruit 
fruit[1] <- fruit[3]
fruit[3] <- "apple"
fruit


# List of strings
heros <- list("superman", "batman", "spiderman")
heros
# Access item in list
heros[1]
# Change value in list
heros[1] <- "hulk"
heros

# Create a matrix
amatrix <- matrix(c(10, 20, 30, 40, 50, 60), nrow = 3, ncol = 2)
amatrix
amatrix[2,1]
newmatrix <- cbind(amatrix, c(15, 25, 35))
newmatrix

# Looping through matrix with nested for loop
mymatrix <- matrix(c("red", "green", "black", "Yellow"), nrow = 2, ncol = 2)
for (rows in 1:nrow(mymatrix)){
  for (cols in 1:ncol(mymatrix)){
    print(mymatrix[rows, cols])
  }
}

# Create and combine matrices
colors1 <- matrix(c("red", "blue", "green", "yellow"), nrow = 2, ncol = 2)
colors2 <- matrix(c("black", "white", "brown", "orange"), nrow = 2, ncol = 2)

# Combining as rows
combRows <- rbind(colors1, colors2)
combRows

# Combining as columns
combCols <- cbind(colors1, colors2)
combCols
