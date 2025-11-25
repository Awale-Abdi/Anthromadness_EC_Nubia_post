# Loading the necessary libraries
library(ggplot2)
library(reshape2)
library(plotly)
library(htmlwidgets)

# Loading the dataset
df <- read.csv("10_Arabio-Egyptian-Basal-Proportions.csv", row.names = 1, check.names = FALSE)

# Fixing column name if altered
colnames(df)[1] <- "distance_percent"

# Converting row names (samples) into a column
df$Sample <- rownames(df)

# Convert Sample into a factor with levels preserving the original CSV order
df$Sample <- factor(df$Sample, levels = df$Sample)

# Converting the dataframe to a long format for ggplot
df_long <- melt(df, id.vars = c("Sample", "distance_percent"), variable.name = "Ancestry", value.name = "Proportion")

# Defining the custom colors
custom_colors <- c(
  "Natufian" = "#2C6ED5", 
  "Dinka" = "#D73027", 
  "Iberomaurusian" = "cyan", 
  "Iran-Chalcolithic" = "#4DA6A6",
  "Yoruba" = "pink"
)

# Creating a horizontal stacked bar plot
p <- ggplot(df_long, aes(x = Sample, y = Proportion, fill = Ancestry,
                         text = paste("Distance%:", round(distance_percent, 2)))) +
  geom_bar(stat = "identity") +
  coord_flip() +
  scale_fill_manual(values = custom_colors) +
  theme_minimal() +
  labs(x = "", y = "", title = "") +
  theme(axis.text.y = element_text(size = 10))

# Converting to interactive plotly chart
interactive_plot <- ggplotly(p, tooltip = c("y", "fill", "text"))

# Saving the plot as an HTML file
htmlwidgets::saveWidget(interactive_plot, "10_Arabio-Egyptian_Basal_Proportions_Plot.html")

# Displaying the plot in RStudio
interactive_plot
