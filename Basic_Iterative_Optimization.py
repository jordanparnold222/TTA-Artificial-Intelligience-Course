# Function to minimize
def calFunction(x):
    return x**2 + 5*x + 6

# Derivative of function
def calDerivative(x):
    return 2*x + 5

# Initial guess
x = 0

# Learning rate
learning_rate = 1

# Number of iterations
num_iterations = 100

# Gradient descent iterations
for _ in range(num_iterations):
    gradient = calDerivative(x)
    x = x - learning_rate * gradient


print("The minimum value found at x =", x)
