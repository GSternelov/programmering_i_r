
test_that("output is correct",{
  expect_equal(euclidian(100,1000), 100)
  expect_equal(euclidian(123612, 13892347912), 4)
})


test_that("output is correct",{
  expect_equal(dijkstra(wiki_graph, 1), c(0,7,9,20,20,11))
  expect_equal(dijkstra(wiki_graph, 3), c(9,10,0,11,11,2))
})
