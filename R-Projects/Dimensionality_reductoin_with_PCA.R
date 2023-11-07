# Dimensionality reduction using Principal Component Analysis (PCA)

# Load mtcars dataset
data(mtcars)

# Perform PCA on the dataset
pca_result = prcomp(mtcars[, c(1:11)], scale = TRUE)

# Explore the PCA results
summary(pca_result)
pc1 <- pca_result$x[, 1]
pc2 <- pca_result$x[, 2]

# Visualize the PCA result
plot(pc1, pc2, xlab = "PC1", ylab = "PC2", main = "Scatter Plot of PC1 vs. PC2")
