#' Remove Small Cell Chunks
#'
#' Remove small cell chunks from a raster layer,
#' where a cell chunk is defined as a group of connected cells with non-missing values.
#' The cell chunk with the largest surface area is preserved and all others removed.
#'
#' @param r 'RasterLayer'.
#'   Raster grid layer with cell values.
#'
#' @return Returns an object of class 'RasterLayer' giving
#'   \code{r} with cell values in the smaller cell chunks set to \code{NA}.
#'
#' @author J.C. Fisher, U.S. Geological Survey, Idaho Water Science Center
#'
#' @seealso \code{\link{clump}}
#'
#' @keywords utilities
#'
#' @importFrom igraph clusters
#'
#' @export
#'
#' @examples
#' set.seed(10)
#' r <- raster::raster(ncols = 10, nrows = 10)
#' r[] <- round(runif(raster::ncell(r)) * 0.7)
#' r <- raster::clump(r)
#' raster::plot(r)
#'
#' r_new <- RmSmallCellChunks(r)
#' raster::plot(r_new, zlim = range(r[], na.rm = TRUE))
#'

RmSmallCellChunks <- function(r) {

  checkmate::assertClass(r, "RasterLayer")

  ext <- raster::extent(r)
  new.ext <- raster::extent(c(ext@xmin - raster::res(r)[1], ext@xmax + raster::res(r)[1],
                              ext@ymin - raster::res(r)[2], ext@ymax + raster::res(r)[2]))
  new.r <- raster::extend(r, new.ext)

  r.values <- new.r[]
  r.clump <- raster::clump(new.r, directions=4)
  chunk.numbers <- r.clump[]
  chunks <- unique(stats::na.omit(chunk.numbers))
  chunk.sizes <- vapply(chunks, function(i) sum(chunk.numbers == i, na.rm=TRUE), 0)

  biggest.chunk <- chunks[which(chunk.sizes == max(chunk.sizes))]
  n <- length(biggest.chunk)
  if (n > 1) warning(sprintf("There are %d raster chunks with largest area.", n))

  chunk.numbers[!is.na(chunk.numbers) & !chunk.numbers %in% biggest.chunk] <- NA
  r.values[is.na(chunk.numbers)] <- NA
  new.r[] <- r.values

  raster::crop(new.r, ext)
}
