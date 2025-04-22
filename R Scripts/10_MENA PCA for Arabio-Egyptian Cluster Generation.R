# Load necessary libraries
library(readr)
library(dplyr)
library(ggplot2)

# Loading the Global 25 PCA Coordinates
g25 <- read_csv("10_MENA_PCA.txt", col_names = FALSE)

# Naming the variables
colnames(g25) <- c("Sample", paste0("PC", 1:(ncol(g25) - 1)))

# Separate the sample names from the numeric matrix
sample_names <- g25$Sample
coords <- g25[, -1]

# Running the PCA on a full 25D matrix
pca_obj <- prcomp(coords, center = TRUE, scale. = FALSE)

# Taking first 7 principal components (I am trying to replicate
# what Vahaduo does and capture more MENA variation)
pc_scores_7d <- as.data.frame(pca_obj$x[, 1:7])
pc_scores_7d$Sample <- sample_names

# Optional group labelling
pc_scores_7d$Group <- sub("_.*", "", pc_scores_7d$Sample)

# Creating a labeled PCA plot
p <- ggplot(pc_scores_7d, aes(x = PC1, y = PC2, label = Sample)) +
  geom_text(size = 3.5, alpha = 0.9, color = "black") +
  theme_minimal(base_size = 14) +
  theme(
    legend.position = "none",
    panel.grid = element_blank(),
    plot.background = element_rect(fill = "white", color = NA),
    panel.background = element_rect(fill = "white", color = NA),
    axis.text = element_text(color = "black"),
    axis.title = element_text(color = "black"),
    plot.title = element_text(color = "black", size = 16, face = "bold")
  ) +
  labs(
    title = "",
    x = "PC1",
    y = "PC2"
  )

# Saving the plot in working direction as an HD JPEG
ggsave("10_MENA_PCA.jpg", plot = p, width = 12, height = 9, dpi = 300, bg = "white")
