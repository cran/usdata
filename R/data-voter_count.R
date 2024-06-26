#' US Voter Turnout Data.
#'
#' State-level data on federal elections held in November
#' between 1980 and 2014.
#'
#' @format A data frame with 936 rows and 7 variables.
#' \describe{
#'   \item{year}{Year election was held.}
#'   \item{region}{Specifies if data is state or national total.}
#'   \item{voting_eligible_population}{Number of citizens eligible to vote; does not count felons.}
#'   \item{total_ballots_counted}{Number of ballots cast.}
#'   \item{highest_office}{Number of ballots that contained a vote for the highest office of that election.}
#'   \item{percent_total_ballots_counted}{Overall voter turnout percentage.}
#'   \item{percent_highest_office}{Highest office voter turnout percentage.}
#' }
#'
#' @examples
#'
#' library(ggplot2)
#'
#' ggplot(voter_count, aes(x = percent_highest_office, y = percent_total_ballots_counted)) +
#'   geom_point() +
#'   labs(
#'     title = "Total Ballots V Highest Office",
#'     x = "Highest Office",
#'     y = "Total Ballots"
#'   )
#' @source [United States Election Project](https://www.electproject.org/election-data/voter-turnout-data)
#'
"voter_count"
