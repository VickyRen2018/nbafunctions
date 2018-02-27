#' A Age Function
#'
#' This function allows you to find the oldest player in a given year of the dataset.
#' @param year
#' @keywords age
#' @export
#' @examples
#' oldest_player(1995)

oldest_player <- function(year) {
  nbayear <- dplyr::filter(nba, Year == year)
  as.character(nbayear$Player[which.max(nbayear$Age)])
}