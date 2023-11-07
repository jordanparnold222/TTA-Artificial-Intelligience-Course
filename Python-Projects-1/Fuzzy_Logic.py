#FUZZY LOGIC PYTHON ASSIGNMENT
import numpy as np
import skfuzzy as fuzz

# Accept user input
user_input = input("Enter a value between 0 and 10: ")
input_value = float(user_input)

# Input variables
x = np.arange(0, 21, 1) #Input range from 0 to 10

# Define fuzzy sets for input variable
low = fuzz.trimf(x, [0, 0, 5]) # Triangular fuzzy set for low values
medium = fuzz.trimf(x, [2, 5, 8]) # Triangular set for medium values
high = fuzz.trimf(x, [5, 10, 10]) # Triangular set for high values
higher = fuzz.trimf(x, [12, 15, 15]) #Triangular set for even higher high values
highest = fuzz.trimf(x, [15, 20, 20]) # Triangular set for the highest of the high values

# Define fuzzy rules
rule1Lower = np.fmax(low, medium) # Rule: If input is low or medium then output is high
rule2Lower = np.fmax(medium, high) # Rule: If input is medium or high, then output is high
rule1Upper = np.fmin(high, higher) # Rule: If input is high or higher then output is low
rule2Upper = np.fmin(higher, highest) # Rule: If input is higher or highest, then output is low

# Apply fuzzy rules to determine the fuzzy relation between the input and output
relationLower = np.fmax(rule1Lower, rule2Lower)
relationUpper = np.fmax(rule1Upper, rule2Upper)
relation = np.fmax(relationLower, relationUpper)
# Defuzzify the relation to obtain a crisp output
output = fuzz.defuzz(x, relation, 'centroid')

# Display the crisp output
print("Output: ", output)