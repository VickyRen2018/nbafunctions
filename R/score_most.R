#' A Score Function
#'
#' This function allows you to find the player score the most points in a given year
#' @param year
#' @keywords points
#' @export
#' @examples
#' score_most(1995)

score_most <- function(year) {
  nbayear <- dplyr::filter(nba, Year == year)
  as.character(nbayear$Player[which.max(nbayear$PTS)])
}