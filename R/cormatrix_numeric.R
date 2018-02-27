#' A Correlation Matrix Function
#'
#' This function allows you to include numeric continuous variables only for a certain year in the dataset, and generate a correlation matrix for all the numeric variables
#' @param year
#' @keywords numeric, correlation matrix
#' @export
#' @examples
#' cormatrix_numeric(1995)

cormatrix_numeric <- function(year) {
  nbayear <- dplyr::filter(nba, Year == year)
  nbanumeric <- purrr::keep(nbayear, is.numeric)
  cor(nbanumeric)
}


