#' Population Race 2019 Data.
#'
#' State level data on population by race.
#'
#' @name pop_race_2019
#' @docType data
#' @format A data frame with 2820 rows and 4 variables.
#' \describe{
#'   \item{state}{State as 2 letter abbreviation.}
#'   \item{state_name}{State name.}
#'   \item{race}{race cohort for population.}
#'   \item{hispanic}{indicates whether population is Hispanic or Latino }
#'   \item{population}{Population of race cohort.}
#'   \item{state_total_population}{total estimated state population in 2019}
#' }
#'
#' @examples
#' library(dplyr)
#'
#' # List race population for each state with percent of total
#' pop_race_2019 |>
#'   group_by(state_name, race, hispanic) |>
#'   mutate(percent = population / state_total_population * 100) |>
#'   select(state_name, race, hispanic, population, percent)
#'
#' pop_race_2019 |>
#'   select(state_name, state_total_population) |>
#'   distinct() |>
#'   arrange(desc(state_total_population))
#' @source [Centers for Disease Control and Prevention](https://wonder.cdc.gov/Bridged-Race-v2019.HTML)
#' @keywords datasets
#'
"pop_race_2019"
