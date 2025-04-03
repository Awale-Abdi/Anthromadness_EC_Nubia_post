# Loading the necessary libraries
library(DT)
library(htmlwidgets)

# Loading the CSV via a relative path
df <- read.csv("8_Yemenis_&_Ethio_HG_Ancestry.csv", check.names = FALSE)

# Creating an interactive heatmap-style table with Mota in neon yellow and others in the usual color gradient
heatmap_table <- datatable(
  df,
  rownames = FALSE,
  options = list(
    pageLength = nrow(df),
    dom = 't',
    ordering = FALSE,
    columnDefs = list(
      list(
        targets = 2:ncol(df),
        render = JS(
          "function(data, type, row, meta) {",
          "  var val = parseFloat(data);",
          "  if (isNaN(val)) return data;",
          "  if (meta.col === meta.settings.aoColumns.findIndex(c => c.sTitle === 'Mota')) {",
          "    return '<div style=\"background-color: #ffff66; text-align: center\">' + data + '</div>';",
          "  }",
          "  var intensity = 255 - Math.round(val * 2.55);",
          "  var r = intensity;",
          "  var g = 255;",
          "  var b = intensity + 30;",
          "  var color = 'rgb(' + r + ',' + g + ',' + b + ')';",
          "  return '<div style=\"background-color:' + color + ';text-align:center\">' + data + '</div>';",
          "}"
        )
      )
    )
  ),
  class = "cell-border stripe hover compact"
)

# Saving the heatmap/table as an HTML file
saveWidget(heatmap_table, "8_Yemenis_&_Ethio_HG_Heatmap.html", selfcontained = TRUE)
