```R
# Example data
df <- data.frame(a = c(1, 2, NA, 4), b = c(5, NA, 7, 8))

# Correct use of na.rm = TRUE in mean()
mean(df$a, na.rm = TRUE) #Correct
mean(df$b, na.rm = TRUE) #Correct

# Correct way to find the mean without handling NAs properly
# Use sapply to apply mean() function to each column while handling NAs
sapply(df, function(x) mean(x, na.rm = TRUE))

# Another approach using the colMeans function
colMeans(df, na.rm = TRUE) #Correct

# Correct handling of vector indexing.  Use logical indexing or explicit bounds checking:
my_vector <- c(10, 20, 30, 40)
valid_index <- which(wrong_index >=1 & wrong_index <= length(my_vector)) #Check the index bounds before accessing
my_vector[wrong_index[valid_index]]

#More robust way to handle vector indexing by specifying the desired elements 
my_vector[c(2,3)]
#or using logical indexing
my_vector[my_vector > 20]
```