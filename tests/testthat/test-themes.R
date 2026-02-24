theme_fns <- c(
  "theme_simple",
  "theme_grid",
  "theme_big_simple",
  "theme_big_grid",
  "theme_grey",
  "theme_black",
  "theme_blue",
  "theme_red"
)

test_that("theme constructors return ggplot2 themes", {
  for (fn in theme_fns) {
    th <- do.call(fn, list())
    expect_s3_class(th, "theme")
    expect_identical(th$legend.position, "bottom")
    expect_equal(th$axis.ticks.length, grid::unit(0.20, "cm"))
  }
})

test_that("dark themes set expected title colors", {
  expect_identical(theme_black()$plot.title$colour, "white")
  expect_identical(theme_blue()$plot.title$colour, "white")
  expect_identical(theme_red()$plot.title$colour, "white")
})
