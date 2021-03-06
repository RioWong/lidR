#' lidR: airborne LiDAR for forestry applications
#'
#' lidR provides a set of tools to manipulate airborne LiDAR data in forestry contexts. The package
#' works essentially with .las or .laz files. The toolbox includes algorithms for DSM, CHM, DTM, ABA,
#' normalisation, tree detection, tree segmentation and other tools, as well as an engine to process
#' wide LiDAR coverages split into many files.
#'
#' To learn more about lidR, start with the vignettes: browseVignettes(package = "lidR"). Users can also
#' find unofficial supplementary documentation in the \href{https://github.com/Jean-Romain/lidR/wiki}{github wiki pages}.
#' To ask "how to" questions please ask on \href{https://gis.stackexchange.com/}{gis.stackexchange.com}
#' with the tag \code{lidr}.
#'
#' @section Package options:
#' \describe{
#' \item{\code{lidR.progress}}{Several functions have a progress bar for long operations (but not all).
#' Should lengthy operations show a progress bar? Default: TRUE}
#' \item{\code{lidR.progress.delay}}{The progress bar appears only for long operations. After how many seconds
#' of computation does the progress bar appear? Default: 2}
#' \item{\code{lidR.verbose}}{Make the package verbose. Default: FALSE}
#' }
#'
#' @useDynLib lidR, .registration = TRUE
#' @import data.table
#' @import methods
#' @importClassesFrom sp Spatial
"_PACKAGE"
