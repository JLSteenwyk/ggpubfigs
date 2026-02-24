test_that("friendly_pal returns full discrete palette by default", {
  pal <- friendly_pal("bright_seven")
  expect_s3_class(pal, "palette")
  expect_identical(attr(pal, "name"), "bright_seven")
  expect_length(pal, length(friendly_pals$bright_seven))
})

test_that("friendly_pal supports explicit discrete size", {
  pal <- friendly_pal("vibrant_seven", 3)
  expect_equal(as.character(pal), friendly_pals$vibrant_seven[1:3])
})

test_that("friendly_pal continuous interpolates to requested length", {
  pal <- friendly_pal("contrast_three", 50, type = "continuous")
  expect_s3_class(pal, "palette")
  expect_length(pal, 50)
})

test_that("friendly_pal validates palette and size", {
  expect_error(friendly_pal("does_not_exist"), "Palette not found")
  expect_error(
    friendly_pal("contrast_three", 4, type = "discrete"),
    "Number of requested colors greater than what palette can offer"
  )
})
