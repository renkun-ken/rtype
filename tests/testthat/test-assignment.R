context("assignment")

test_that("assignment", {
  expect_null({
    declare(x,y,z)
    numeric(x) <- rnorm(5)
    integer(y) <- 2L
    logical(z) <- TRUE
    NULL
  })
  expect_error({
    declare(x=numeric())
    integer(x) <- 10L
  })
  expect_error({
    declare(x=numeric())
    numeric(x) <- TRUE
  })
})
