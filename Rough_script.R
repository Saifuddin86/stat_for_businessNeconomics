# Create a plot
plot(1, type = "n", xlab = "", ylab = "", xlim = c(0, 2), ylim = c(0, .5))

# Define the vertices of the triangle
x <- c(0, 2, 2)
y <- c(0, 0, 0.5)

# Draw the triangle
polygon(x, y, col = "lightblue", border = "blue")

# Add labels to the vertices
text(x, y, labels = c("A", "B", "C"), pos = 3, col = "blue")


# Define the function to plot
my_function <- function(x) { x^2 }

# Plot the curve
curve(my_function, from = -10, to = 10, col = "blue", lwd = 2, ylab = "y", xlab = "x")

# Add a horizontal line at y = 50
abline(h = 50, col = "red", lwd = 2)

# Add a vertical line at x = 5
abline(v = 5, col = "green", lwd = 2)

# Add a line with intercept = 0 and slope = 1
abline(a = 0, b = 1, col = "purple", lwd = 2)




library(gt)

# Original data frame
data <- data.frame(
  Category = c("A", "B", "C"),
  Value1 = c(10, 20, 30),
  Value2 = c(15, 25, 35)
)

# Transpose the data frame
transposed_data <- as.data.frame(t(data))

# Set column names from the first row and remove the first row
colnames(transposed_data) <- transposed_data[1, ]
transposed_data <- transposed_data[-1, ]

# Create a gt table from the transposed data
gt_table <- gt(transposed_data)
gt_table



library(dplyr)
library(tidyr)
library(gt)

# Original data frame
data <- data.frame(
  Category = c("A", "B", "C"),
  Value1 = c(10, 20, 30),
  Value2 = c(15, 25, 35)
)

# Convert data to long format, then back to wide format to "transpose"
transposed_data <- data %>%
  pivot_longer(cols = -Category, names_to = "Variable", values_to = "Value") %>%
  pivot_wider(names_from = Category, values_from = Value)

# Create a gt table from the transposed data
gt_table <- gt(transposed_data)
gt_table
