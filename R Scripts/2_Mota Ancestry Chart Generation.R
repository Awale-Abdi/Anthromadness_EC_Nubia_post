# Loading the necessary libraries
library(plotly)
library(htmlwidgets)

# Reading the CSV via a relative path (have the csv in your 
# working directory)
df <- read.csv("2_Horner_Mota_Ancestry.csv", row.names = 1)

# Reversing the factor levels so the first CSV row is at the top 
# (didn't come out in the order of the CSV without doing this)
df$Population <- factor(rownames(df), levels = rev(rownames(df)))

# Creating a horizontal bar chart
p <- plot_ly(
  data = df,
  x = ~Mota,           # 'Mota' on the X-axis
  y = ~Population,     # 'Population' on the Y-axis
  type = 'bar',
  orientation = 'h',   # Horizontal orientation
  marker = list(color = 'purple') # I chose this color as a nod to 
  # Hodgson et al. 2014's "Omotic" component, kekekeke.
) %>%
  layout(
    title = "Mota-related Ancestry among Horn African groups",
    xaxis = list(title = "Mota-related Ancestry %"),
    yaxis = list(title = "")
  )

# 4. Save the interactive chart as an HTML file
saveWidget(as_widget(p), "2_Mota_Ancestry_Chart.html", selfcontained = TRUE)
