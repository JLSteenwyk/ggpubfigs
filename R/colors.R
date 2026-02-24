#' Complete list of palettes
#'
#' Use \code{\link[wesanderson]{wes_palette}} to construct palettes of desired length.
#'
#' Color palettes were obtained from various websites include:
#' https://personal.sron.nl/~pault/#sec:qualitative
#' https://davidmathlogic.com/colorblind/#%23648FFF-%23785EF0-%23DC267F-%23FE6100-%23FFB000
#' https://bookdown.org/hneth/ds4psy/ds4psy_files/figure-html/apx-color-define-rgb-1.png
#'
#' @export
friendly_pals <- list(
  bright_seven = c("#4477AA", "#228833", "#AA3377", "#BBBBBB", "#66CCEE", "#CCBB44", "#EE6677"),
  contrast_three = c("#004488", "#BB5566", "#DDAA33"),
  vibrant_seven = c("#0077BB", "#EE7733", "#33BBEE", "#CC3311", "#009988", "#EE3377", "#BBBBBB"),
  muted_nine = c("#332288", "#117733", "#CC6677", "#88CCEE", "#999933", "#882255", "#44AA99", "#DDCC77", "#AA4499"),
  nickel_five = c("#648FFF", "#FE6100", "#785EF0", "#FFB000", "#DC267F"),
  ito_seven = c("#0072B2", "#D55E00", "#009E73", "#CC79A7", "#56B4E9", "#E69F00", "#F0E442"),
  ibm_five = c("#648FFF", "#785EF0", "#DC267F", "#FE6100", "#FFB000"),
  wong_eight = c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7", "#000000"),
  tol_eight = c("#332288", "#117733", "#44AA99", "#88CCEE", "#DDCC77", "#CC6677", "#AA4499", "#882255"),
  zesty_four = c("#F5793A", "#A95AA1", "#85C0F9", "#0F2080"),
  retro_four = c("#601A4A", "#EE442F", "#63ACBE", "#F9F4EC"),
  tableau_ten = c("#4E79A7", "#F28E2B", "#E15759", "#76B7B2", "#59A14F", "#EDC948", "#B07AA1", "#FF9DA7", "#9C755F", "#BAB0AC"),
  glasbey_twelve = c("#0000FF", "#FF0000", "#00FF00", "#000033", "#FF00B6", "#005300", "#FFD300", "#009FFF", "#9A4D42", "#00FFBE", "#783FC1", "#1F9698"),
  viridis_eight = c("#440154", "#46337E", "#365C8D", "#277F8E", "#1FA187", "#4AC16D", "#9FDA3A", "#FDE725"),
  cividis_eight = c("#00204D", "#16396D", "#4B546C", "#6C6E72", "#8E8A79", "#B3A772", "#DBC761", "#FFEA46")
)

#' A color blind friendly color palette generator
#'
#' Code is based on the wes anderson package https://github.com/karthik/wesanderson
#' These are a handful of color palettes that are color blind friendly.
#'
#' @param n Number of colors desired.
#' @param name Name of desired palette. Choices are:
#'   \code{bright_seven}, \code{contrast_three},  \code{vibrant_seven},
#'   \code{muted_nine}, \code{nickel_five},  \code{ito_seven},
#'   \code{tableau_ten}, \code{glasbey_twelve}, \code{viridis_eight},
#'   \code{cividis_eight}
#' @param type Either "continuous" or "discrete". Use continuous if you want
#'   to automatically interpolate between colours.
#'   @importFrom graphics rgb rect par image text
#' @return A vector of colours.
#' @export
#' @keywords colors
#' @examples
#' friendly_pal("bright_seven")
#' friendly_pal("contrast_three")
#' friendly_pal("vibrant_seven")
#' friendly_pal("vibrant_seven", 3)
#'
#' # If you need more colours than normally found in a palette, you
#' # can use a continuous palette to interpolate between existing
#' # colours
#' pal <- friendly_pal(21, name = "muted_nine", type = "continuous")
#' image(volcano, col = pal)
friendly_pal <- function(name, n, type = c("discrete", "continuous")) {
  type <- match.arg(type)

  pal <- friendly_pals[[name]]
  if (is.null(pal))
    stop("Palette not found.")

  if (missing(n)) {
    n <- length(pal)
  }

  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }

  out <- switch(type,
    continuous = grDevices::colorRampPalette(pal)(n),
    discrete = pal[1:n]
  )
  structure(out, class = "palette", name = name)
}
