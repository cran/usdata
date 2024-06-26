#' Pierce County House Sales Data for 2020
#'
#' Real estate sales for Pierce County, WA in 2020.
#'
#' @name pierce_county_house_sales
#' @docType data
#' @format A data frame with 16814 rows and 19 variables.
#' \describe{
#'   \item{sale_date}{Date the legal document (deed) was executed.}
#'   \item{sale_price}{Dollar amount recorded for the sale.}
#'   \item{house_square_feet}{Sum of the square feet for the building.}
#'   \item{attic_finished_square_feet}{Finished living area in the attic.}
#'   \item{basement_square_feet}{Total square footage of the basement..}
#'   \item{attached_garage_square_feet}{Total square footage of the
#'    attached or built in garage(s).}
#'   \item{detached_garage_square_feet}{Total detached garage(s) square
#'    footage.}
#'   \item{fireplaces}{Total count of single, double or PreFab stoves.}
#'   \item{hvac_description}{Text description associated with the
#'    predominant heating source for the built-as structure
#'    i.e. Forced Air, Electric Baseboard, Steam, etc. .}
#'   \item{exterior}{Predominant type of construction materials used for
#'    the exterior siding on Residential Buildings.}
#'   \item{interior}{Predominant type of materials used on the interior
#'     walls. i.e. Sheetrock or Paneling.}
#'   \item{stories}{Number of floors/building levels above grade. Stories
#'    do not include attic or basement areas.}
#'   \item{roof_cover}{Material used for the roof. I.e. Composition Shingles,
#'    Wood Shake, Concrete Tile, etc.}
#'   \item{year_built}{Year the building was built, as stated by the building
#'    permit or a historical record.}
#'   \item{bedrooms}{Number of bedrooms listed for a residential property.}
#'   \item{bathrooms}{Number of baths listed for a residential property. The
#'    number is listed as a decimal, i.e. 2.75 = two full and one
#'    three-quarter baths. A tub/sink/toilet combination (plus any additional
#'    fixtures) is considered 1.0 bath. A shower/sink/toilet combination
#'    (plus any additional fixtures) is 0.75 bath. A sink/toilet combination
#'    is .5 bath.}
#'   \item{waterfront_type}{Describes the type of waterfront the property
#'    adjoins or has legal access to.}
#'   \item{view_quality}{Assigned to reflect the market appeal of the
#'    overall view available from the dwelling or property.}
#'   \item{utility_sewer}{Identifies if sewer/septic is installed,
#'    available or not available or if the property does not support
#'    an on site sewage disposal system.}
#' }
#' @examples
#' library(dplyr)
#' library(lubridate)
#'
#' # List house sales frequency and average price grouped by month
#' pierce_county_house_sales |>
#'   mutate(month_sale = month(sale_date)) |>
#'   group_by(month_sale) |>
#'   summarize(freq = n(), mean_price = mean(sale_price)) |>
#'   arrange(desc(freq))
#'
#' # List house sales frequency and average price group by waterfront type
#' pierce_county_house_sales |>
#'   group_by(waterfront_type) |>
#'   summarize(freq = n(), mean_price = mean(sale_price)) |>
#'   arrange(desc(mean_price))
#' @source [Pierce County, Washington](https://www.piercecountywa.gov/736/Data-Downloads)
#' @keywords datasets
#'
"pierce_county_house_sales"
