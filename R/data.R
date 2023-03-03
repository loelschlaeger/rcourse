#' Stocks
#'
#' @description
#' A dataset containing general descriptions of stocks in the American S&P 500
#' index from 2012 to 2016.
#'
#' @usage
#' data("stocks")
#'
#' @format
#' A \code{tibble} with 505 rows and 6 variables:
#' \describe{
#'   \item{symbol}{stock symbol at the New York Stock Exchange}
#'   \item{name}{the name of the security}
#'   \item{sector}{the GICS sector}
#'   \item{industry}{the GICS sub-industry}
#'   \item{hq}{the state/country of the headquarter}
#'   \item{added}{the date the stock was first added to the S&P 500}
#' }
#'
#' @source
#' \url{https://www.kaggle.com/datasets/dgawlik/nyse/} (modified)
"stocks"

#' Stock prices
#'
#' @description
#' A dataset containing closing prices and trading volumes at the New York Stock
#' Exchange from 2012 to 2016. Most of the data spans from 2010 to the end 2016,
#' for companies new at the stock market the date range is shorter. There have
#' been approximately 140 stock splits in that time, the data set has been
#' adjusted accordingly.
#'
#' @usage
#' data("prices")
#'
#' @format
#' A \code{tibble} with 851264 rows and 4 variables:
#' \describe{
#'   \item{date}{the date}
#'   \item{symbol}{stock symbol at the New York Stock Exchange}
#'   \item{close}{the closing price}
#'   \item{volume}{the trading volume}
#' }
#'
#' @source
#' \url{https://www.kaggle.com/datasets/dgawlik/nyse/} (modified)
"prices"

#' Stock metrics
#'
#' @description
#' Fundamental stock metrics extracted from the annual SEC 10K fillings
#' (2012-2016). Dataset contains missing values.
#'
#' @usage
#' data("metrics")
#'
#' @format
#' A \code{tibble} with 1781 rows and 11 variables:
#' \describe{
#'   \item{symbol}{stock symbol at the New York Stock Exchange}
#'   \item{period}{end of the considered time period}
#'   \item{ebit}{earnings before interest and taxes in USD}
#'   \item{ebt}{earnings before taxes in USD}
#'   \item{rd}{investment in research and development in USD}
#'   \item{ni}{net income in USD}
#'   \item{inventory}{value of inventory in USD}
#'   \item{cr}{cash ratio (cash reserves divided by liabilities) in percent}
#'   \item{liabilities}{liabilities in USD}
#'   \item{eps}{earnings per share (net income divided by shares) in USD}
#'   \item{roe}{return on equity (net income divided by equity) in percent}
#' }
#'
#' @source
#' \url{https://www.kaggle.com/datasets/dgawlik/nyse/} (modified)
"metrics"
