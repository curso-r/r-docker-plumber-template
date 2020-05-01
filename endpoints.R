#' Hello world
#' @get /
function(x = "hello world! GET") {
  x
}

#' Hello world POST
#' @post /
function(x = "hello world! POST") {
  x
}

#' Hello world histogram
#' @param aaa number of samples.
#' @png
#' @get /plot
function(aaa = 100){
  rand <- rnorm(min(as.numeric(aaa), 1000))
  hist(rand, main = "Hello world!")
}
