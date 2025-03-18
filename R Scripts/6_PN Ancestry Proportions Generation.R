# Loading the necessary libraries
library(ggplot2)
library(reshape2)
library(plotly)
library(htmlwidgets)

# Loading the dataset (edited from nMonte output) via a relative
# path - should load if you have it in your working directory
df <- read.csv("6_PN_Ancestry_Proportions.csv", row.names = 1, check.names = FALSE)

# Fixing column name if altered (encountered some problems early - don't worry about it)
colnames(df)[1] <- "distance_percent"

# Converting row names (samples) into a column
df$Sample <- rownames(df)

# Converting the dataframe to a long format for ggplot
df_long <- melt(df, id.vars = c("Sample", "distance_percent"), variable.name = "Ancestry", value.name = "Proportion")

# Defining the custom colors
custom_colors <- c("Ethio-HG" = "darkred", 
                   "Pre-historic Sudanese" = "red", 
                   "Pre-historic Egyptian" = "blue", 
                   "Iran-Chalcolithic" = "lightblue")

# Creating a horizontal stacked bar plot an inverted order 
# (long-story, don't worry about it)
p <- ggplot(df_long, aes(y = reorder(Sample, -distance_percent), x = Proportion, fill = Ancestry, 
                         text = paste("Distance%:", round(distance_percent, 2)))) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = custom_colors) +
  theme_minimal() +
  labs(y = "", x = "", title = "") +
  theme(axis.text.y = element_text(size = 10))

# Converting to interactive plotly chart
interactive_plot <- ggplotly(p, tooltip = c("x", "fill", "text"))

# Saving the plot as an HTML file in working directory
htmlwidgets::saveWidget(interactive_plot, "6_PN_Ancestry_Proportions_Plot.html")