# Task 1: Matrix Creation
matrix_A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9),
                   nrow = 3, ncol = 3, byrow = TRUE)
matrix_B <- matrix(c(9, 8, 7, 6, 5, 4, 3, 2, 1),
                   nrow = 3, ncol = 3, byrow = TRUE)

# Task 2: Matrix Manipulation
sum_matrix <- matrix_A + matrix_B
scaled_matrix <- matrix_A * 2

# Task 3: Matrix Operations
transposed_A <- t(matrix_A)
product_matrix <- matrix_A %*% matrix_B

# Task 4: Matrix Statistics
sum_matrix_A <- sum(matrix_A)
mean_matrix_B <- mean(matrix_B)
sd_matrix_B <- sd(matrix_B)

# Task 5: Visualization
library(ggplot2)
library(reshape2)

# Create a heatmap of matrix_A
heatmap_data <- melt(matrix_A)
heatmap_plot <- ggplot(heatmap_data, aes(x =
                                           Var1, y = Var2, fill = value)) +
  
  geom_tile() +
  scale_fill_gradient(low = "white", high = "blue")+
  labs(title = "Heatmap of Matrix A", x ="Column", y = "Row")

# Create a bar plot comparing sums of rows in matrix_B
row_sums <- rowSums(matrix_B)
row_names <- paste("Row", 1:3)
barplot_data <- data.frame(Row = row_names,
                           Sum = row_sums)
barplot_plot <- ggplot(barplot_data, aes(x =Row, y = Sum)) +
  geom_bar(stat = "identity", fill = "green") +
  labs(title = "Sums of Rows in Matrix B", x ="Row", y = "Sum")

# Display the visualizations

print(heatmap_plot)
print(barplot_plot)
