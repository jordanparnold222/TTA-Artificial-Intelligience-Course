# Create a data frame
dFrame <- data.frame(
  Name = c("Jordan", "Arnold", "Lucy"),
  Age = c(27, 27, 5),
  Married = c(TRUE, FALSE, TRUE)
)
print(dFrame)

# Accessing data frame element techniques

# Using $ notation
names <- dFrame$Name
ages <- dFrame$Age
mStatus <- dFrame$Married
print(names)
print(ages)
print(mStatus)

# Accessing columns using indexing
names <- dFrame[, "Name"]
ages <- dFrame[, "Age"]
mStatus <- dFrame[, "Married"]
print(names)
print(ages)
print(mStatus)

# Summarize the data frame
summary(dFrame)

# Adding new row to data frame
nRow <- data.frame(
  Name = "Bob",
  Age = 40,
  Married = TRUE
)

udFrame = rbind(dFrame, nRow)
print(udFrame)

# Adding new column to data frame
nCol = c(TRUE, FALSE, FALSE, TRUE)
dFrame = cbind (udFrame, Employed = nCol)
print(dFrame)

# Create a factor
colors <- factor(c("Red", "Green", "Blue", "Yellow"))
# Access second element of factor
element_2 <- colors[2]
print(element_2)

# Combine data frames
dFrame2 = data.frame(
  Name = c("Bob", "Sally"),
  Age = c(40, 23),
  Married = c(TRUE, FALSE),
  Employed = c(TRUE, TRUE)
)
# Combine Vertically
dFrame3v <- rbind(dFrame, dFrame2)
dFrame3v
# Combine Horizontally
dFrame3h <- cbind(dFrame, dFrame2)
dFrame3h

# Identify duplicate rows
dupRows = duplicated(dFrame3v)
dupRows

# Remove duplicate rows
newDF <- dFrame3v[!dupRows, ]
newDF
