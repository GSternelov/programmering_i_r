
test_that("output is correct",{
  expect_equal(euclidian(100,1000), 100)
  expect_equal(euclidian(123612, 13892347912), 4)
})

test_that("e and t are numeric values",{
  expect_equal(is.numeric(e), TRUE)
  expect_equal(is.numeric(t), TRUE)
})
