test_that("e and t are numeric values",{
  expect_equal(is.numeric(e), TRUE)
  expect_equal(is.numeric(t), TRUE)
})


a <- c(100,1000)
expect_output(euclidian(a), 100)