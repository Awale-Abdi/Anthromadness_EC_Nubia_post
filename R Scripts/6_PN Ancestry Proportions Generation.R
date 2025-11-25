# Loading the necessary libraries
library(ggplot2)
library(reshape2)
library(plotly)
library(htmlwidgets)

# Loading the dataset
df <- read.csv("6_PN_Ancestry_Proportions.csv", row.names = 1, check.names = FALSE)

# Fixing column name if altered
colnames(df)[1] <- "distance_percent"

# Converting row names (samples) into a column
df$Sample <- rownames(df)

# Convert Sample into a factor with levels preserving the original CSV order
df$Sample <- factor(df$Sample, levels = df$Sample)

# Converting the dataframe to a long format for ggplot
df_long <- melt(
  df,
  id.vars = c("Sample", "distance_percent"),
  variable.name = "Ancestry",
  value.name = "Proportion"
)

# Defining the custom colors
custom_colors <- c(
  "Ethio-HG"              = "purple",   # We ain't forgettin' you, Hodgson et al.
  "Pre-historic Sudanese" = "red",
  "Pre-historic Egyptian" = "blue", 
  "Iran-Chalcolithic"     = "#4DA6A6"   # teal-blue
)

# Creating a vertical stacked bar plot (maintaining the order in the CSV)
p <- ggplot(df_long, aes(
  x = Sample,
  y = Proportion,
  fill = Ancestry,
  text = paste("Distance%:", round(distance_percent, 2))
)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = custom_colors) +
  theme_minimal() +
  labs(x = "", y = "", title = "") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 10))

# Converting the ggplot to an interactive plotly chart
interactive_plot <- ggplotly(p, tooltip = c("y", "fill", "text"))

# Saving the interactive plot as an HTML file in the working directory
htmlwidgets::saveWidget(interactive_plot, "6_PN_Ancestry_Proportions_Plot.html")

# Displaying the plot in RStudio
interactive_plot
