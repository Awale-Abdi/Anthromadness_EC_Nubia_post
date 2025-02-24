# Loading the required libraries
library(plotly)
library(htmlwidgets)

# Reading the CSV via a relative path (have it in your working directory)
df <- read.csv("Horner_Mota_Ancestry.csv", row.names = 1)

# Creating a new column called "Population" from the row names,
# preserving their order in the data frame.
df$Population <- factor(rownames(df), levels = rownames(df))

# Creating an interactive bar chart showing Mota ancestry in purple
# as a homage to Hodgson et al. 2014's Omotic component (kekkekeke)
# using "Population" for the x-axis in the same order as in the CSV.
p <- plot_ly(
  data = df,
  x = ~Population,  # A factor in the original CSV order
  y = ~Mota,        # The 'Mota' column
  type = 'bar',
  marker = list(color = 'purple')  # Purple bars
) %>%
  layout(
    title = "Mota Ancestry",
    xaxis = list(title = "Population"),
    yaxis = list(title = "Mota %")
  )

# Saving the interactive chart as an HTML file
saveWidget(as_widget(p), "Mota_Ancestry_Chart.html", selfcontained = TRUE)
