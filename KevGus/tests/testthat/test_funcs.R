test_that("e and t are numeric values",{
  expect_equal(is.numeric(e), TRUE)
  expect_equal(is.numeric(t), TRUE)
})