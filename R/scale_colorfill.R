#' Identical Scales for Color and Fill
#'
#' Define the same scale for the color and the fill
#' in ggplot2 plots.
#'
#' @param ...,type,palette,direction see arguments to \code{\link[ggplot2]{scale_color_brewer}}
#' @return ggplot2 scales for color and fill
#'
#' @export
#' @importFrom ggplot2 discrete_scale
#' @importFrom scales brewer_pal
scale_colorfill_brewer <- function(..., type = "seq", palette = 1, direction = 1) {
    ## The simple solution of scale_color_brewer(...) + scale_fill_brewer(...)
    ## does not work anymore, so we have to go deeper!
    discrete_scale(c("colour", "fill"), "brewer",
                   brewer_pal(type, palette, direction), ...)
}

#' Identical Scales for Color and Fill
#'
#' Define the same scale for the color and the fill
#' in ggplot2 plots.
#'
#' @param ...,h,c,l,h.start,direction see arguments to \code{\link[ggplot2]{scale_color_hue}}
#' @return ggplot2 scales for color and fill
#'
#' @export
#' @importFrom ggplot2 discrete_scale
#' @importFrom scales hue_pal
scale_colorfill_hue <- function(..., h = c(0, 360) + 15, c = 100, l = 65, h.start = 0, direction = 1) {
    discrete_scale(c("colour", "fill"), "hue",
                   hue_pal(h, c, l, h.start, direction), ...)
}

#' Identical Scales for Color and Fill
#'
#' Define the same scale for the color and the fill
#' in ggplot2 plots.
#'
#' @param ...,low,high,space,guide see arguments to \code{\link[ggplot2]{scale_color_gradient}}
#' @return ggplot2 scales for color and fill
#'
#' @export
#' @importFrom ggplot2 continuous_scale
#' @importFrom scales seq_gradient_pal
scale_colorfill_gradient <- function(..., low = "#132B43", high = "#56B1F7", space = "Lab", guide = "colourbar") {
    continuous_scale("colour", "gradient",
                     seq_gradient_pal(low, high, space), guide = guide, ...)
}
