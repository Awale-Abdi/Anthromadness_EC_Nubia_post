# Loading the required libraries
library(DT)
library(htmlwidgets)

# Loading the CSV via a relative path (have it in working directory)
df <- read.csv("9_PN_Later_Admix_Results.csv", check.names = FALSE)
colnames(df) <- trimws(colnames(df))  # Clean any leading/trailing spaces

# Highlighting all proportions except "Other", "Target", and "Distance"
highlight_cols <- which(!(colnames(df) %in% c("Other", "Target", "Distance"))) - 1

# Creating an interactive datatable with a green color gradient
heatmap_table <- datatable(
  df,
  rownames = FALSE,
  options = list(
    pageLength = nrow(df),
    dom = 't',
    ordering = FALSE,
    columnDefs = list(
      list(
        targets = highlight_cols,
        render = JS(
          "function(data, type, row, meta) {",
          "  var val = parseFloat(data);",
          "  if (isNaN(val)) return data;",
          "  var max = 15;",
          "  var min = 0;",
          "  var scale = Math.max(0, Math.min(255, 255 - Math.round((val - min) / (max - min) * 255)));",
          "  var r = scale;",
          "  var g = 255;",
          "  var b = scale;",
          "  var color = 'rgb(' + r + ',' + g + ',' + b + ')';",
          "  return '<div style=\"background-color:' + color + ';text-align:center\">' + data + '</div>';",
          "}"
        )
      )
    )
  ),
  class = "cell-border stripe hover compact"
)

# Saving the table as an HTML file in the working directory
saveWidget(
  heatmap_table,
  "9_PN_Later_Admix_Heatmap.html",
  selfcontained = TRUE
)
