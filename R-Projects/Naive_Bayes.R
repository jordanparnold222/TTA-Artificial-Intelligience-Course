# Example text data for analysis
example_text <- c(
  "Oil prices are expected to rise in the coming months.",
  "The stock market experienced a significant drop today.",
  "New technology advancements are driving innovation and volatility in the industry.",
  "Politicians are discussing new policies for economic growth.",
  "The weather forecast predicts heavy rainfall in the region."
)

# Load the necessary packages
library(tm)  # Text mining package
library(e1071)  # Package for various machine learning algorithms

# Preprocess the example text data
preprocessed_text <- tolower(example_text)  # Convert text to lowercase
preprocessed_text <- removePunctuation(preprocessed_text)  # Remove punctuation
preprocessed_text <- removeNumbers(preprocessed_text)  # Remove numbers
preprocessed_text <- removeWords(preprocessed_text, stopwords("en"))  # Remove common English stopwords
preprocessed_text <- stripWhitespace(preprocessed_text)  # Remove extra whitespace

# Create a corpus and document-term matrix
corpus <- Corpus(VectorSource(preprocessed_text))  # Create a text corpus
dtm <- DocumentTermMatrix(corpus)  # Create a document-term matrix

# Create labels for the example text
labels <- factor(c("Oil", "Stock", "Technology", "Politics", "Weather"))  # Create categories

# Train a Naive Bayes classifier
model <- naiveBayes(x = as.matrix(dtm), y = labels)  # Train a Naive Bayes classifier

# Predict the category of a new document
new_doc <- "Investors are concerned about the market volatility."
preprocessed_new_doc <- tolower(new_doc)  # Convert new document to lowercase
preprocessed_new_doc <- removePunctuation(preprocessed_new_doc)  # Remove punctuation
preprocessed_new_doc <- removeNumbers(preprocessed_new_doc)  # Remove numbers
preprocessed_new_doc <- removeWords(preprocessed_new_doc, stopwords("en"))  # Remove stopwords
preprocessed_new_doc <- stripWhitespace(preprocessed_new_doc)  # Remove extra whitespace

# Create a new document-term matrix for the new document
new_corpus <- Corpus(VectorSource(preprocessed_new_doc))  # Create a corpus for the new document
new_dtm <- DocumentTermMatrix(new_corpus, control = list(dictionary = Terms(dtm)))  # Create new DTM

# Convert the new_dtm to a matrix and predict the category of the new document
new_dtm_matrix <- as.matrix(new_dtm)  # Convert new DTM to matrix
predicted_category <- predict(model, new_dtm_matrix)  # Predict the category of the new document

# Print the predicted category
cat("The predicted category of the new document is:", levels(predicted_category), "\n")  # Display predicted category
print(dtm)
print(new_dtm)


predict_output <- predict(model, new_dtm_matrix)
print(predict_output)

# Print the preprocessed new document
print(preprocessed_new_doc)
# Print the dictionary used for the new document-term matrix
print(Terms(dtm))
# Check for non-zero counts in the new document-term matrix
print(colSums(as.matrix(new_dtm)))
