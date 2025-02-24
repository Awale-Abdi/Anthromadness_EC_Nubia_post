# Load required libraries
library(plotly)
library(htmlwidgets)

# 1. Read the CSV (relative path):
df <- read.csv("Horner_Mota_Ancestry.csv", row.names = 1)

# Create a new column called "Population" from the row names,
# preserving their order in the data frame.
df$Population <- factor(rownames(df), levels = rownames(df))

# 2. Create an interactive bar chart showing Mota ancestry in purple,
# using "Population" for the x-axis in the same order as in the CSV.
p <- plot_ly(
  data = df,
  x = ~Population,  # Now a factor in the original CSV order
  y = ~Mota,        # The 'Mota' column
  type = 'bar',
  marker = list(color = 'purple')  # Purple bars
) %>%
  layout(
    title = "Mota Ancestry",
    xaxis = list(title = "Population"),
    yaxis = list(title = "Mota %")
  )

# 3. Save the interactive chart as an HTML file
saveWidget(as_widget(p), "Mota_Ancestry_Chart.html", selfcontained = TRUE)

# The file "Mota_Ancestry_Chart.html" will appear in your working directory.
# Upload it to Git (or elsewhere) and embed it (e.g., via an <iframe> in Blogger).
