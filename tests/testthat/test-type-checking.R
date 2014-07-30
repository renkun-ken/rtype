context("type checking")

test_that("type checking", {
  expect_null({
    checkType(1L,2L,is.integer,"integer")
    NULL
  })
  expect_error({
    checkType(1L,1.5,is.integer,"integer")
  })
})
