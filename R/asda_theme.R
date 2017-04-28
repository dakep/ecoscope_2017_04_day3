#' ASDa ggplot2 Theme
#'
#' A ggplot2 theme based on the black/white theme
#' from ggplot2 with different margins and grid lines.
#'
#' Gray, dotted grid lines (color "gray30")
#' and smaller margins around the plot.
#'
#' @param base_size the base font size
#' @param base_family the default font family
#'
#' @return a ggplot2 theme
#'
#' @export
#' @importFrom ggplot2 theme_bw theme element_line element_blank
#' @importFrom grid unit
asda_theme <- function(base_size = 12, base_family = "") {
    theme_bw(base_size, base_family) +
        theme(
            plot.margin = unit(c(0.2, 0.4, 0.5, 0.2), "lines"),
            panel.grid.major = element_line(
                color = "gray30",
                linetype = "dotted"
            ),
            panel.grid.minor = element_blank()
        )
}
