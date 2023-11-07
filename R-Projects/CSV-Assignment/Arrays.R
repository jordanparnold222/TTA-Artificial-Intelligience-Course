# Create a one-dimensional array
array_1d <- array(c(1, 2, 3, 4), dim = c(4))
print(array_1d)

# Create a 2-dimensional array
array_2d <- array(c(1:6), dim = c(3,2))
print(array_2d)
# Create a 3-dimensional array
array_3d <- array(c(1:12), dim = c(2, 3, 2))
print(array_3d)

# Accessing elements in a 1d array
element_1d <- array_1d[2]
print(element_1d)

# Accessing elements in a 2d array
element_2d <- array_2d[3, 1]
print(element_2d)

#accessing elements in a 3d array
element_3d <- array_3d[1, 2, 1]
print(element_3d)

# Check dimensions of an array
dimensions <- dim(array_3d)
print(dimensions)

# Find total number of dimensions in array
num_dims <- length(dim(array_2d))
print(num_dims)

# Find total number of elements in array
num_els <- length(array_3d)
print(num_els)