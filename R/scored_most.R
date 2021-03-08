#' A Scored Most Player Function
#'
#' This function allows you to find a scored most player in a certain year.
#' @param x a year from 1950 to 2017.
#' @keywords score PTS
#' @export
#' @examples
#' scored_most(1991)

scored_most <- function(x){
  y <- NBA %>%
    filter(Year==x)
  head(y[order(y$PTS,decreasing = TRUE),],1)
}
