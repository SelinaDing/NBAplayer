#' A Oldest Player Function
#'
#' This function allows you to find the oldest player in the NBA data for that year
#' (if multiple players have the same age, then return a single player).
#' @param x a year from 1950 to 2017.
#' @keywords age
#' @export
#' @examples
#' oldest_player(1991)

oldest_player <- function(x){
  y <- NBA %>%
    filter(Year==x)
  head(y[order(y$Age,decreasing = TRUE),],1)
}
