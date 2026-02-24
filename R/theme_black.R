#' Black theme extension for ggplot2 plots
#'
#' @description
#' Black theme for ggplot2 plots. See \href{https://ggplot2.tidyverse.org/reference/theme.html}{theme()} for complete documentation.
#' Complete list of palettes
#'
#' @export
theme_black <- function () { 
    theme_bw(base_size=12, base_family="") %+replace% 
        theme(
            plot.background = element_rect(fill="black", colour=NA), 
            legend.background = element_rect(fill="transparent", colour=NA),
            legend.key = element_rect(fill="transparent", colour=NA),
            legend.title=element_text(size=14, color="white"),
            legend.text=element_text(size=12, color="white"),
            axis.line = element_line(color = "white", linewidth = .75, linetype = "solid"),
            axis.ticks = element_line(colour = "white", linewidth = .75),
            panel.background  = element_rect(fill = "black", colour = "grey90", linetype="solid", linewidth=0.75),
            panel.grid.minor = element_blank(),
            panel.grid.major = element_line(color="white"),
            panel.border = element_blank(),
            legend.position = "bottom",
            plot.title = element_text(size=16, hjust = 0.0, vjust = 1.75, color="white"),
            axis.text.x = element_text(color="white", size=12, margin = margin(t = 4, r = 0, b = 0, l = 0)),
            axis.text.y = element_text(color="white", size=12, margin = margin(t = 0, r = 4, b = 0, l = 0)),
            axis.title.y = element_text(margin = margin(t = 0, r = 10, b = 0, l = 0), angle = 90, size = 14, color="white"),
            axis.title.x = element_text(margin = margin(t = 10, r = 0, b = 0, l = 0), angle = 0, size = 14, color="white"),
            axis.ticks.length = unit(0.20, "cm"),
            strip.background = element_blank(),
            strip.text.x = element_text(size = 12, color = "white"),
            strip.text.y = element_text(size = 12, color = "white")
        )
}