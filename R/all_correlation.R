#' A Correlation Matrix Function
#'
#' This function allows you to get the correlation matrix
#' for all numeric variables in the data for a year.
#' @param x a year from 1950 to 2017.
#' @keywords correlation
#' @export
#' @examples
#' all_correlation(1991)

all_correlation <- function(x){
  y <- NBA %>%
    filter(Year==x) %>%
    dplyr::select_if(is.numeric)
  cor(y)
}
