% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils_metrics.r
\name{rumple_index}
\alias{rumple_index}
\title{Rumple index of roughness}
\usage{
rumple_index(x, y = NULL, z = NULL, ...)
}
\arguments{
\item{x}{A 'RasterLayer' or a vector of x point coordinates.}

\item{y}{numeric. If \code{x} is a vector of coordinates: the associated y coordinates.}

\item{z}{numeric. If \code{x} is a vector of coordinates: the associated z coordinates.}

\item{...}{unused}
}
\value{
numeric. The computed Rumple index.
}
\description{
Computes the roughness of a surface as the ratio between its area and its
projected area on the ground. If the input is a gridded object (lasmetric or raster) the
function computes the surfaces using Jenness's algorithm (see references). If the input
is a point cloud the function uses a Delaunay triangulation of the points and computes
the area of each triangle.
}
\examples{
x = runif(20, 0, 100)
y = runif(20, 0, 100)

# Perfectly flat surface, rumple_index = 1
z = rep(10, 20)
rumple_index(x, y, z)

# Rough surface, rumple_index > 1
z = runif(20, 0, 10)
rumple_index(x, y, z)

# Rougher surface, rumple_index increases
z = runif(20, 0, 50)
rumple_index(x, y, z)

# Measure of roughness is scale-dependent
rumple_index(x, y, z)
rumple_index(x/10, y/10, z)

# Use with a canopy height model
LASfile <- system.file("extdata", "Megaplot.laz", package="lidR")
las = readLAS(LASfile)
chm = grid_canopy(las, 2, p2r())
rumple_index(chm)
}
\references{
Jenness, J. S. (2004). Calculating landscape surface area from digital elevation models. Wildlife Society Bulletin, 32(3), 829–839.
}
