# Loading the required libraries
library(ggplot2)
library(ggrepel)  # For better label positioning

# Loading the PCA coordinates from a .txt file via a relative path
file_path <- "4_PCA_Positions.txt"  # Ensure the file is in the working directory
df <- read.csv(file_path, header = FALSE, sep = ",")

# Extracting the sample names and coordinates
sample_names <- df[, 1]  # First column contains names
x_values <- as.numeric(df[, 2])  # First PCA component
y_values <- as.numeric(df[, 3])  # Second PCA component

# Defining groups for better visualization
SSA_samples <- c("Mota", "Dinka")
eurasian_samples <- c("Anatolian-HG", "WHG")
modern_cushite_ethiosemite_samples <- c("Somali", "Tigray-Tigrinya", "Oromo", "Afar", "Saho", "Agaw", "Beta-Israel", "Amhara", "Biher-Tigrinya")
kenyan_pastoral_neolithic_samples <- c("Kenya-Early-PastoralN", "Kenya-HyraxHill-PastoralN", "Kenya-IA-PastoralN", "Kenya-IA-PastoralN-Outlier", 
                                       "Kenya-LukenyaHill-PastoralN", "Kenya-MoloCave-PastoralN", "Kenya-PastoralN", "Kenya-PastoralN-Elmenteitan", 
                                       "Kenya-PastoralN-Elmenteitan-Outlier")

# Assigning groups to samples
group_labels <- ifelse(sample_names %in% SSA_samples, "SSA",
                       ifelse(sample_names %in% eurasian_samples, "Eurasian",
                              ifelse(sample_names %in% modern_cushite_ethiosemite_samples, "Modern Cushites & Ethiosemites",
                                     ifelse(sample_names %in% kenyan_pastoral_neolithic_samples, "Kenyan Pastoral Neolithic", "Unclassified"))))  

# Creating a dataframe for ggplot
pca_data <- data.frame(Sample = sample_names, PC1 = x_values, PC2 = y_values, Group = group_labels)

# Defining colors and shapes for each group
color_map <- c("SSA" = "red", 
               "Eurasian" = "blue", 
               "Modern Cushites & Ethiosemites" = "darkgreen",
               "Kenyan Pastoral Neolithic" = "darkgreen")

shape_map <- c("SSA" = 0,  # Hollow Square
               "Eurasian" = 2,  # Hollow Triangle
               "Modern Cushites & Ethiosemites" = 1,  # Hollow Circle
               "Kenyan Pastoral Neolithic" = 3)  # Hollow Diamond

# Creating the PCA scatter plot
p <- ggplot(pca_data, aes(x = PC1, y = PC2, color = Group, shape = Group)) +
  geom_point(size = 4, stroke = 1.2, fill = "white") +  # Hollow shapes
  geom_text_repel(data = subset(pca_data, Group %in% c("SSA", "Eurasian")),  # Only label SSA & Eurasian groups
                  aes(label = Sample), show.legend = FALSE, size = 3, 
                  box.padding = 0.5, point.padding = 0.3, 
                  segment.color = NA, max.overlaps = 50) +  # Increased max.overlaps
  scale_color_manual(name = "Population Group", values = color_map) +
  scale_shape_manual(name = "Population Group", values = shape_map) +
  labs(title = "G25 Based PCA generated using R",
       x = "PC1", 
       y = "PC2") +
  theme_minimal(base_size = 14) +  # Clean theme
  theme(panel.grid = element_blank())  # Removes gridlines

# Displaying the plot
print(p)

# Saving the plot as a high-resolution JPEG
output_filename <- "4_ModernVPastoral_PCA.jpg"
ggsave(output_filename, plot = p, width = 12, height = 9, dpi = 300)

# Printing the confirmation message
print(paste("Plot saved as", output_filename))
