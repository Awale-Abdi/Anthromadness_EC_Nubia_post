library(plotly)
library(htmlwidgets)

# Reading the CSV via a relative path (have it in your working directory)
df <- read.csv("2_Horner_Mota_Ancestry.csv", row.names = 1)

# Creating a new column called "Population" from the row names,
# preserving their order in the data frame.
df$Population <- factor(rownames(df), levels = rownames(df))

# Creating an interactive bar chart showing Mota ancestry in purple
# as a homage to Hodgson et al. 2014's Omotic component (kekkekeke)
# and using "Population" for the x-axis in the same order as in the CSV.
p <- plot_ly(
  data = df,
  x = ~Population,  # A factor in the original CSV order
  y = ~Mota,        # The 'Mota' column
  type = 'bar',
  marker = list(color = 'purple')
) %>%
  layout(
    title = "",
    xaxis = list(title = ""),
    yaxis = list(title = "Mota-related Ancestry %")
  )

# Saving the interactive chart as an HTML file in the working directory
saveWidget(as_widget(p), "2_Mota_Ancestry_Chart.html", selfcontained = TRUE)

# Displaying the plot in R Studio
p
