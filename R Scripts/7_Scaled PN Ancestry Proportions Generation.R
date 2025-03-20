# Loading the necessary libraries
library(ggplot2)
library(reshape2)
library(plotly)
library(htmlwidgets)

# Loading the dataset
df <- read.csv("7_scaled_PN_ancestry_proportions.csv", row.names = 1, check.names = FALSE)

# Converting row names (samples) into a column
df$Sample <- rownames(df)

# Convert Sample into a factor with levels preserving the original CSV order
df$Sample <- factor(df$Sample, levels = df$Sample)

# Converting the dataframe to a long format for ggplot
df_long <- melt(df, id.vars = "Sample", variable.name = "Ancestry", value.name = "Proportion")

# Defining the custom colors
custom_colors <- c("Pre-historic Sudanese" = "red", 
                   "Pre-historic Egyptian" = "blue", 
                   "Iran-Chalcolithic" = "lightblue")

# Creating a vertical stacked bar plot (maintaining the order in the CSV)
p <- ggplot(df_long, aes(x = Sample, y = Proportion, fill = Ancestry, 
                         text = paste("Proportion:", round(Proportion, 2)))) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = custom_colors) +
  theme_minimal() +
  labs(x = "", y = "", title = "") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 10))

# Converting to interactive plotly chart
interactive_plot <- ggplotly(p, tooltip = c("y", "fill", "text"))

# Saving the plot as an HTML file in working directory
htmlwidgets::saveWidget(interactive_plot, "7_scaled_PN_ancestry_proportions_Plot.html")