#' 'The Witcher' colour map
#'
#' A dataset containing the colour palettes from the TV show, book series and video games of 'The Witcher'.
#'
#'
#'@format A data frame containing all the colours used in the palette:
#'\itemize{
#'   \item V1: Red value
#'   \item V2: Green value
#'   \item V3: Blue value
#'   \item option: Refers to the characters of the world of the Witcher.
#'}
"witcher.map"




#' The Witcher Colour Map.
#'
#' This function creates a vector of \code{n} equally spaced colors along the
#' 'witcher colour map'.
#'
#' @param n The number of colors (\eqn{\ge 1}) to be in the palette.
#'
#' @param alpha	The alpha transparency, a number in from 0 to 1, see argument alpha in
#' \code{\link[grDevices]{hsv}}.
#'
#' @param begin The (corrected) hue in from 0 to 1 at which the witcher colormap begins.
#'
#' @param end The (corrected) hue in from 0 to 1 at which the witcher colormap ends.
#'
#' @param direction Sets the order of colors in the scale. If 1, the default, colors
#' are ordered from darkest to lightest. If -1, the order of colors is reversed.
#'
#' @param option A character string indicating the colourmap to use. It is not case-sensible
#'
#' @return \code{witcher} returns a character vector, \code{cv}, of color hex
#' codes. This can be used either to create a user-defined color palette for
#' subsequent graphics by \code{palette(cv)}, a \code{col =} specification in
#' graphics functions or in \code{par}.
#'
#' @author Lukas Graf \email{graflukas57@@gmail.com}
#'
#' Semi-transparent colors (\eqn{0 < alpha < 1}) are supported only on some
#' devices: see \code{\link[grDevices]{rgb}}.
#'
#'@examples
#'
#'
#'
#'pal <- witcher(255, option = "Geralt")
#'image(volcano, col = pal)
#'
#'library(ggplot2)
#'
#'ggplot(data.frame(x = rnorm(10000), y = rnorm(10000)), aes(x = x, y = y)) +
#'geom_hex() + coord_fixed() +
#'scale_fill_witcher(option="school_griffin") + theme_bw()
#'

#' @rdname witcher
#'
#' @return  \code{witcherMap} returns a \code{n} lines data frame containing the
#' red (\code{R}), green (\code{G}), blue (\code{B}) and alpha (\code{alpha})
#' channels of \code{n} equally spaced colors along the 'The Witcher' colour map.
#' \code{n = 256} by default.
#'
witcherMap <- function(n = 256, alpha = 1, begin = 0, end = 1, direction = 1, option = "Geralt") {

  option <- tolower(option)

  if (begin < 0 | begin > 1 | end < 0 | end > 1) {
    stop("begin and end must be in from 0 to 1")
  }

  if (abs(direction) != 1) {
    stop("direction must be 1 or -1")
  }

  if (direction == -1) {
    tmp <- begin
    begin <- end
    end <- tmp
  }

  colnames(witcher.map) <- c("R", "G", "B", "option")

  map <- witcher.map[witcher.map$option == option, ]

  map_cols <- grDevices::rgb(map$R, map$G, map$B, maxColorValue = 255)
  fn_cols <- grDevices::colorRamp(map_cols, space = "Lab", interpolate = "spline")
  cols <- fn_cols(seq(begin, end, length.out = n)) / 255
  data.frame(R = cols[, 1], G = cols[, 2], B = cols[, 3], alpha = alpha)
}

#' @rdname witcher
#' @export
#'
#'
witcher <- function(n, alpha = 1, begin = 0, end = 1, direction = 1, option = "Geralt") {

  option <- tolower(option)

  if (begin < 0 | begin > 1 | end < 0 | end > 1) {
    stop("begin and end must be in from 0 to 1")
  }

  if (abs(direction) != 1) {
    stop("direction must be 1 or -1")
  }

  if (direction == -1) {
    tmp <- begin
    begin <- end
    end <- tmp
  }

  colnames(witcher.map) <- c("R", "G", "B", "option")

  map <- witcher.map[witcher.map$option == option, ]

  map_cols <- grDevices::rgb(map$R, map$G, map$B, maxColorValue = 255)
  fn_cols <- grDevices::colorRamp(map_cols, space = "Lab", interpolate = "spline")
  cols <- fn_cols(seq(begin, end, length.out = n)) / 255
  grDevices::rgb(cols[, 1], cols[, 2], cols[, 3], alpha = alpha)

}



#' @rdname witcher
#'
#' @export
witcher_pal <- function(alpha = 1, begin = 0, end = 1, direction = 1, option = "Geralt") {

  option <- tolower(option)

  function(n) {
    witcher(n, alpha, begin, end, direction, option)
  }
}


#' @rdname scale_witcher
#'
#' @importFrom ggplot2 scale_fill_gradientn scale_color_gradientn discrete_scale
#'
#' @export
scale_color_witcher <- function(..., alpha = 1, begin = 0, end = 1, direction = 1,
                            discrete = FALSE, option = "Geralt") {

  option <- tolower(option)

  if (discrete) {
    discrete_scale("colour", "witcher", witcher_pal(alpha, begin, end, direction, option), ...)
  } else {
    scale_color_gradientn(colours = witcher(256, alpha, begin, end, direction, option), ...)
  }
}

#' @rdname scale_witcher
#' @aliases scale_color_witcher
#' @export
#'
scale_colour_witcher <- scale_color_witcher

#' @rdname scale_witcher
#' @aliases scale_color_witcher
#' @export
scale_colour_witcher_d <- function(..., alpha = 1, begin = 0, end = 1,
                               direction = 1, option = "Geralt", aesthetics = "colour") {
  ggplot2::discrete_scale(
    aesthetics,
    "witcher_d",
    witcher_pal(alpha, begin, end, direction, option),
    ...
  )
}

#' @rdname scale_witcher
#' @aliases scale_color_witcher
#' @export
scale_color_witcher_d <- scale_colour_witcher_d


#' @rdname witcher
#' @aliases witcher
#' @export
witcher <- witcher

#' The Witcher colour scales
#'
#' Uses the The Witcher color scale.
#'
#' For \code{discrete == FALSE} (the default) all other arguments are as to
#' \link[ggplot2]{scale_fill_gradientn} or \link[ggplot2]{scale_color_gradientn}.
#' Otherwise the function will return a \code{discrete_scale} with the plot-computed
#' number of colors.
#'
#'
#' @param ... parameters to \code{discrete_scale} or \code{scale_fill_gradientn}
#'
#' @param alpha pass through parameter to \code{witcher}
#'
#' @param begin The (corrected) hue in from 0 to 1 at which the witcher colormap begins.
#'
#' @param end The (corrected) hue in from 0 to 1 at which the witcher colormap ends.
#'
#' @param direction Sets the order of colors in the scale. If 1, the default, colors
#' are as output by \code{witcher_pal}. If -1, the order of colors is reversed.
#'
#' @param discrete generate a discrete palette? (default: \code{FALSE} - generate continuous palette)
#'
#' @param option A character string indicating the colourmap to use.
#'
#' @param aesthetics Character string or vector of character strings listing the name(s) of the aesthetic(s) that this scale works with.
#' This can be useful, for example, to apply colour settings to the `colour` and `fill` aesthetics at the same time, via `aesthetics = c("colour", "fill")`.
#' Parameter inherited from 'ggplot2'.
#'
#'
#'
#' @rdname scale_witcher
#'
#' @importFrom ggplot2 scale_fill_gradientn scale_color_gradientn discrete_scale
#'
#' @importFrom gridExtra grid.arrange
#'
#' @examples
#' library(ggplot2)
#' ggplot(data.frame(x = rnorm(10000), y = rnorm(10000)), aes(x = x, y = y)) +
#' geom_hex() + coord_fixed() +
#' scale_fill_witcher(option="ciri") + theme_bw()
#'
#' ggplot(data.frame(x = rnorm(10000), y = rnorm(10000)), aes(x = x, y = y)) +
#' geom_hex() + coord_fixed() +
#' scale_fill_witcher(option="geralt") + theme_bw()
#'
#'
#' @export
scale_fill_witcher <- function(..., alpha = 1, begin = 0, end = 1, direction = 1,
                           discrete = FALSE, option = "Geralt") {

  option <- tolower(option)

  if (discrete) {
    discrete_scale("fill", "witcher", witcher_pal(alpha, begin, end, direction, option), ...)
  } else {
    scale_fill_gradientn(colours = witcher(256, alpha, begin, end, direction, option), ...)
  }
}

#' @rdname scale_witcher
#' @aliases scale_fill_witcher
#' @export
scale_fill_witcher_d <- function(..., alpha = 1, begin = 0, end = 1,
                             direction = 1, option = "Geralt", aesthetics = "fill") {
  discrete_scale(
    aesthetics,
    "witcher_d",
    witcher_pal(alpha, begin, end, direction, option),
    ...
  )
}

#' Show all available palettes and their respective values
#'
#' @keywords internal
#'
#' @rdname witcher
#' @aliases witcher_palette_names
#' @export

witcher_palette_names <- function() names(witcher_palettes)

#' Show the different witcher palettes
#'
#' A simple function that returns a plot of all available palettes in the `theWitcher` - package
#'
#' @param palettes one or more palettes to show
#'
#' @rdname witcher
#' @aliases witcher_colors
#' @export


witcher_colors <- function() {
  dims <- n2mfrow(length(witcher_palettes))
  oldpar <- par(mfrow = dims, mai = par('mai')/5)
  on.exit(par(oldpar))

  for (i in 1:length(witcher_palettes)) {
    image(matrix(1:50, ncol = 1), col = witcher(n=255,option = witcher_palette_names()[[i]]), axes = FALSE)
    text(0.5,0.5,witcher_palette_names()[[i]], cex=1.5)
  }
}
