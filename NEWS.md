# inlmisc 0.4.3.9000

- In `PrintTable` function: `d` argument can be of class 'matrix'; and
  a default caption is no longer added when `title` and `headnotes` arguments are not specified.

- Add `MoveMidpoint` function, used to move the critical midpoint in a diverging color scheme.

- In `plot.Tol` function, permit plotting of color palettes that are not of class 'Tol'.

- Tidy help documentation

- Add `GetRegionOfInterest` function, used to calculate the region of interest from spatial points.

- In `FindOptimalSubset` function: improve matrix construction of `suggestions`;
  change calculation of number of bits in a number.

- In `AddColorKey` function, rearrange order of arguments.

- In `PlotCrossSection` function: add `bend.label` argument, used to
  place labels at top of the bend-in-section lines;
  change default value of `bg.col` argument from `"#FFFFFFD8"` to `NULL`,
  and for `scale.loc` argument from `"bottom"` to `NULL`;
  make font/line color darker for section breaks and features.

- Rename `GetTolColors` function to `GetColors`.

- In `GetColors` function: add additional color schemes;
  change `blind` argument option from `"monochromacy"` to `"monochrome"`; and
  when argument `n` is unspecified, return a variant of the `GetColors` function.

- For leaflet-search plugin, change version from `2.8.0` to `2.9.6` and tidy wrapper functions.

- In `CreateWebMap` function, add `service` argument for specifying
  the mapping service to use for accessing base-map tiles.

- Change required R version from `>= 3.2.0` to `>= 3.4.0`.

# inlmisc 0.4.3

- Add `AddNorthArrow` function, was previously defined as an internal function.

- In `AddScaleBar` function: non-backward compatible argument changes.
  Remove `offset` argument and replace with `...`, see help documentation for details.

- Make **dichromat** a suggested package.

- Remove **viridisLite** from suggested packages.

- Add `GetInsetLocation` function, used to determine
  the location for a inset graphics in the main plot region.

- In `AddPoints` function: add `bty`, `draw.legend`, and `draw.points` arguments.

- In `PlotGraph` function: add `xpd` argument, determines
  whether point and (or) line symbols are clipped to the plot region;
  change default color scheme;
  change contents of `fill` argument (non-backward compatible) and add a `fillcolor` argument;
  provide `main` argument a default value of `NULL`.

- In `FindOptimalSubset` function, add `monitor` argument to check on status of GA run.

- In `GetTolColors` function: add color schemes;
  change default scheme from `"bright"` to `"smooth rainbow"`;
  add `start`, `end`, `bias`, `reverse`, `blind`, and `gray` arguments.

# inlmisc 0.4.2

- In `GetTolColors` function, revise color schemes based of issue 3.0 of technical note.

- In `PlotGraph` function, improve placement of tick marks.

- Remove **colorspace** from suggested packages and replace with **viridisLite**.

- In `ToScientific` function, better identify whether to print numeric values in fixed or scientific notation.

- In `AddScaleBar` function, non-backward compatible argument changes and formatting improvements.

- In `PlotGraph` function: fix bug that resulted in an error when `type = "n"`; and
  add `main` argument for placing a title at the top of the plot.

- Make **gstat** and **roxygen2** suggested packages.

- Remove **httr**, **maps**, and **maptools** from suggested packages.

- In *misc/preamble.tex* file: tidy code;
  include fix for spacing after number in List of Figures and List of Tables;
  remove **helvet** package; and add **float** package, provides the H float modifier option.

- In `AddInsetMap`: add an optional `e` argument, a numeric vector describing
  the extent of the smaller axis-aligned rectangle; add "center" option for `loc` argument; and
  add `bty` argument, determines if a box is to be drawn around the inset map.

- Update *leaflet-search.min.js* and *leaflet-search.min.css* files to version 2.8.0.

- Add `PrintFigure` function, used to print the LaTeX code associated with a figure.

# inlmisc 0.4.0

- Add `GetTolColors` function, used to access color palettes by Paul Tol.

- Avoid importing all functions from a package.

- Remove `AddCertificate` function, no longer needed with new version of R (3.4.3).

- Add `PrintTable` function, used to print the LaTeX code associated with a `data.frame` object.

- In `PlotMap` function, remove option to map points.

- In `ReadCodeChunks` function, remove dependency on *knitr-intro.Rmd* file in example.

- In `AddColorKey` function, replace `scientific` argument with `scipen`, see `getOption("scipen")` command.

- In `AddColorKey` function, add `log` argument to specify axis to be logarithmic.

- In `AddColorKey`, use *m x 10^n* format for tick labels written in scientific notation.

- In `RecreateLibrary` function, add `parallel` argument to install packages from source using parallel processes.

- In `ToScientific` function, add `big.mark` argument with default value of `","`.

- In `ToScientific` function, fix bug that formatted `0` as `NA` when `type = "plotmath"`.

- In `CreateWebMap` function, pass `...` arguments to `leaflet::leaflet` function,
  these arguments were previously passed to the `leaflet::leafletOptions` function.

- In `CreateWebMap` function, add `maps` argument to specify which base maps to include.

- In `CreateWebMap` function, remove coordinates and zoom level information from top of map.

- Add `AddHomeButton`, `AddClusterButton`, and `AddSearchButton`, and `AddLegend` functions,
  used to add additional web map elements.

- In `FindOptimalSubset` function, allow integer chromosomes to be specified for the `suggestions` argument.

- Add additional argument checks using **checkmate** package.

# inlmisc 0.3.5

- In `PlotMap` function, fix bug introduced by previous fix of raster range calculation.

- Made `AddCertificate` an internal function.

- Add argument checks using **checkmate** package.

# inlmisc 0.3.4

- In `PlotMap` function, fix bug in range calculation of raster values by removing `finite = TRUE`.

- In `PlotMap` function, fix extent of background image, rivers, lakes, and roads using `par("usr")`.

- Add `FindOptimalSubset` function, used to identify an optimal subset using a genetic algorithm.

# inlmisc 0.3.3

- In `AddPoints` function: add option to scale symbol size to radius;
  revise calculation of symbol size and legend labels.

- In `PlotMap` function, let `r` argument accept any object that can be converted to a `RasterLayer` class.

- In LaTeX preamble: add **verbatimbox** package; add maketitle format.

- In `PlotMap` function, add `simplify` argument, used to convert raster to polygons prior to plotting.

- In `Grid2Polygons` function: allow `grd` argument to be an object of class `SpatialPixelsDataFrame` or `Raster*`;
  transform coordinate reference system (CRS) of `ply` argument to match the CRS of the `grd` argument; and
  add `zlim` argument, a limit on the attribute variable.

- In `ToScientific` function, add arguments `scipen`, `delimiter`, and `...`;
  and rename `lab.type` argument to `type`.
  Code in place for backwards compatibility.

# inlmisc 0.3.2

- In `RecreateLibrary` and `SavePackageDetails` functions, add support for *gzip* file compression.

- In `SavePackageDetails` function, fix bug that results in
  an 'invalid cross-device link' error on some flavor's of R.

# inlmisc 0.3.1

- Rename `SavePackageNames` function to `SavePackageDetails`.

- Add `AddCertificate` function, used to add a X.509 certificate to your CA bundle.

- Make **httr** a suggested package.

- In `RecreateLibrary` function, add `local` argument, file paths of files containing builds of packages.

- In `AddGradientLegend` function, add `n` argument, the desired number of tick-marks to be drawn.

# inlmisc 0.3.0

- Add `Grid2Polygons` function from the **Grid2Polygons** package.

- Total revision of the `RecreateLibrary` and `SavePackageNames` functions.

- In `ToScientific` function, improve default value for `digits` argument.

- Add `AddGradientLegend` function, used to add a continuous color gradient legend strip to a plot.

# inlmisc 0.2.7

- Add `RecreateLibrary` function, used to recreate an existing library on a new installation of R.

- Add `FormatPval` function, used to format *p*-values.

- Add **bm** and **makecell** packages to LaTeX preamble.

- Changes in `PlotGraph` function include:
  Add option for plotting interval censored data by specifying `type = "i"`.
  Select box-and-whisker plot using `type = "w"`, was previously `type = "box"`.
  Default for `seq.date.by` argument changed from `"year"` to `NULL`.

- Add `CreateWebMap` function, creates a Leaflet map widget using
  [The National Map](https://nationalmap.gov/) services.

- Tidy help documentation for functions.

# inlmisc 0.2.6

- Add `endian` argument to `ReadModflowBinary` function.
  Argument describes the endian-ness (or byte-order) of the binary file
  and is required for calls to the `readBin` function.
  Thanks to Professor Brian Ripley for identifying this issue.

# inlmisc 0.2.5

- In `SummariseBudget` function, the `desc` argument no longer needs to be specified.
  If missing, all data types are summarized.

- In `SummariseBudget` function, remove default for `desc` argument and add `id` argument,
  the auxiliary variable name.

- In `ReadModflowBinary` function, enable cell-by-cell budget files to be read when they are not in compact form.

- Change legend format for binned point data from `[#, )` to `># to #`.

- Fix bug that resulted in error when plotting a single point location using the `AddPoints` function.

- Add [AppVeyor](https://www.appveyor.com/) to package.

# inlmisc 0.2.4

- Fix bug that resulted in incorrect dimensions for saved graphics.

# inlmisc 0.2.3

- In `PlotMap`, `PlotCrossSection`, and `AddColorKey` functions,
  dynamically adjust vertical plot margins based on the number of lines in the user specified labels.

- In `AddPoints` function, remove `draw.legend` argument and rename `pos` argument to `legend.pos`.
  A `NULL` value for `legend.pos` will prevent the legend from being drawn.

- Change function name from `AddBubbles` to `AddPoints`.

- In `PlotMap` and `PlotCrossSection` functions, fix layout so color key dimensions don't change on resize.

- In `PlotMap` function, add `file.close` argument.
  A logical that indicates if the graphics device driver should be shut down when the function exits.

- In `AddBubbles` function, allow `z` argument to be an object of class `factor`.

- In `AddBubbles` function, account for aspect ratio when constructing legend.

- In `AddBubbles` function, rename `bg.pos` argument to `bg`, and set `bg.neg = NULL`.
  The `bg` argument may now be used to specify circle colors for all `z` values, not just positive values.
  See help documentation for details.

- In `AddBubbles` function, specifying a single numeric value for the `inches` arguments results in
  a fixed radius being used for all circle symbols.

- In `PlotMap` function, account for z-axis limits prior to removing rows and columns having all missing values.

- In `PlotMap` function, change default for `scale.loc` argument from `"leftbottom"` to `NULL`;
  the scale bar is no longer drawn by default.

- In `PlotMap` function, change `asp` argument from 1 to NULL.
  Defaults to 1 when data is projected, otherwise, a calculated value based on axes limits is used.

- Add function `POSIXct2Character`, used to convert objects from `POSIXct` to `character` class.

- Update URL links to HTTP Secure

- Generalize CITATION file

# inlmisc 0.2.2

- Change argument name in `ReadModflowBinary` function from `f` to `path`.

- Add `ReadCodeChunk` function, reads **knitr** code chunks into the current session.

- Change NEWS file to markdown format.

- Remove *misc* folder from *.Rbuildignore* file, adds the *misc/preamble.tex* file back to the package build.

# inlmisc 0.2.1

- Fix invalid URLs.

# inlmisc 0.2.0

- Add `file` argument to `PlotMap` and `PlotCrossSection` functions.
  Specifying this argument will start a graphics device driver for producing either a PDF or PNG file.

- Width and height of graphics device is no longer calculated when drawing to screen.

# inlmisc 0.1.2

- Explain the USGS and INL acronyms from the Title in the DESCRIPTION file.

- Fix invalid URLs.

# inlmisc 0.1.0

- First version of **inlmisc**
