# Loading the necessary libraries
library(DT)
library(htmlwidgets)

# Loading the CSV via a relative path
df <- read.csv("8_Jewish_Yemeni_Results.csv", check.names = FALSE)

# Creating an interactive heatmap-style table with a green gradient
heatmap_table <- datatable(
  df,
  rownames = FALSE,
  options = list(
    pageLength = nrow(df),
    dom = 't',
    ordering = FALSE,
    columnDefs = list(
      list(
        # DataTables is 0-based; color all but the first column
        targets = 1:(ncol(df) - 1),
        render = JS(
          "function(data, type, row, meta) {",
          "  var val = parseFloat(data);",
          "  if (isNaN(val)) return data;",
          "  var intensity = 255 - Math.round(val * 2.55);",
          "  var color = 'rgb(' + intensity + ', 255, ' + intensity + ')';",
          "  return '<div style=\"background-color:' + color + ';text-align:center\">' + data + '</div>';",
          "}"
        )
      )
    )
  ),
  class = "cell-border stripe hover compact"
)

# Saving the heatmap/table as an HTML file in the working directory
saveWidget(
  heatmap_table,
  "8_Jewish_Yemeni_V_Egyptian_Heatmap.html",
  selfcontained = TRUE
)
