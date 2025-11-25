# Load necessary libraries
library(ggplot2)
library(plotly)
library(dplyr)
library(tidyr)
library(readr)
library(htmlwidgets)

# Loading data using a relative path
data <- read_csv("3_Pre-historic_Ancestry.csv")

# Defining the correct ancestry order. Had to do this manually 
# as I altered the order in the CSV but it wouldn't reflect in 
# the chart
correct_ancestry_order <- c("Pre-historic Egyptian", "Iron-Age Yemeni", "Ethio-HG", "Pre-historic Sudanese")

# Converting the data to a long format for ggplot
data_long <- data %>%
  select(Population, all_of(correct_ancestry_order)) %>%
  pivot_longer(cols = -Population, names_to = "Ancestry", values_to = "Percentage")

# Ensuring the Populations maintain the order evident in the CSV
data_long$Population <- factor(data_long$Population, levels = rev(data$Population))

# Ensuring Ancestry follows the correct order
data_long$Ancestry <- factor(data_long$Ancestry, levels = correct_ancestry_order)

# Applying custom colors
custom_colors <- c(
  "Pre-historic Egyptian" = "#2C6ED5",  # vivid blue
  "Iron-Age Yemeni"       = "#6BAED6",  # sky blue
  "Ethio-HG"              = "#7B3294",  # purple (Hodgson et al. 2025 homage continues!)
  "Pre-historic Sudanese" = "#D73027"   # strong red
)

# Creating the final stacked bar chart
p <- ggplot(data_long, aes(
  x = Population, y = Percentage, fill = Ancestry,
  text = paste(
    "Ancestry:", Ancestry,
    "<br>Proportion:", Percentage, "%",
    "<br>Distance%:", data$`distance%`[match(Population, data$Population)]
  ))) +
  geom_bar(stat = "identity") +
  coord_flip() +
  scale_fill_manual(values = custom_colors) +
  labs(title = "", x = "", y = "") +
  theme_minimal()

# Converting ggplot to an interactive plotly plot with detailed tooltips
p_interactive <- ggplotly(p, tooltip = "text")

# Saving the interactive plot as an HTML file in working directory
saveWidget(p_interactive, file = "3_Pre-historic_Ancestry_Plot.html", selfcontained = TRUE)

# Showing the interactive plot in R Studio
p_interactive
