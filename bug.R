```R
# Example data
df <- data.frame(a = c(1, 2, NA, 4), b = c(5, NA, 7, 8))

# Incorrect use of na.rm = TRUE in mean()
mean(df$a, na.rm = TRUE)
mean(df$b, na.rm = TRUE)

# Incorrect way to find the mean without handling NAs properly
# This will result in NA for the column with any NA values
colMeans(df)

# Correct way to find column means, handling NAs with na.rm = TRUE
colMeans(df, na.rm = TRUE)

# Another example with an error that may not be immediately obvious
# The problem lies in the fact that R silently ignores invalid indexes without explicit warning
# This can lead to unexpected behavior
wrong_index <- c(-1, 5, 2) # The -1 and 5 are out of bounds for this vector
my_vector <- c(10, 20, 30, 40)
my_vector[wrong_index]
# Expected output: NA, NA, 30.  But in fact it is a warning and NA NA NA

#correct handling of vector indexing:
my_vector[my_vector>20]
```