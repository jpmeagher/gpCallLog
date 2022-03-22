#' Incoming Calls for a rural GP practice in Ireland
#'
#' A dataset containing the call call logs for incoming calls for a rural Irish
#' GP practice for 2021
#'
#' @format A data frame with 30780 rows and 6 variables: \describe{
#'   \item{t}{call timestamp}
#'   \item{status}{Was the call answered or not}
#'   \item{duration}{duration of the call}
#'   \item{total_duration}{duration of the call and time spent in a queue}
#'   \item{from}{a caller id}
#'   \item{to}{a recipient id}
#'    ... }
"inbound_calls_2021"
