% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GetRegionOfInterest.R
\name{GetRegionOfInterest}
\alias{GetRegionOfInterest}
\title{Get Region of Interest}
\usage{
GetRegionOfInterest(obj)
}
\arguments{
\item{obj}{'SpatialPoints*'.
Spatial points}
}
\value{
Returns an object of class 'SpatialPolygons'.
}
\description{
Create a spatial polygon describing the convex hull of a set of spatial points.
}
\examples{
set.seed(123)
pts <- sp::SpatialPoints(cbind(x = stats::runif(50), y = stats::runif(50)))
ply <- GetRegionOfInterest(pts)
sp::plot(pts, col = "red")
sp::plot(ply, add = TRUE)

}
\seealso{
\code{\link[grDevices]{chull}}
}
\author{
J.C. Fisher, U.S. Geological Survey, Idaho Water Science Center
}
\keyword{utilities}
