library(withr)
library(quarto)

qmd_dir <- "C:/Users/thuan/RR/RRcourse2025/10. MD and Quarto 3"

for (s in 1:8) {
  with_dir(qmd_dir, {
    quarto_render(
      input = "Assignment.qmd",
      output_file = sprintf("GameOfThrones_Season_%d.pdf", s),
      execute_params = list(season = s)  # Pass the season number to the QMD
    )
  })
}
