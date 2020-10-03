#' Blue theme extension for ggplot2 plots
#'
#' @description
#' Blue theme for ggplot2 plots. See \href{https://ggplot2.tidyverse.org/reference/theme.html}{theme()} for complete documentation.
#'
#' @export
theme_blue <- function () { 
    theme_bw(base_size=12, base_family="Arial") %+replace% 
        theme(
            plot.background = element_rect(fill="dodgerblue4", colour=NA), 
            legend.background = element_rect(fill="transparent", colour=NA),
            legend.key = element_rect(fill="transparent", colour=NA),
            legend.title=element_text(size=14, color="white"),
            legend.text=element_text(size=12, color="white"),
            axis.line = element_line(color = "white", size = .75, linetype = "solid"),
            axis.ticks = element_line(colour = "white", size = .75),
            panel.background  = element_rect(fill = "dodgerblue4", colour = "grey90", linetype="solid", size=0.75),
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