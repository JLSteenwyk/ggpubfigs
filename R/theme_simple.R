#' Simple theme extension for ggplot2 plots
#'
#' @description
#' Simple theme for ggplot2 plots. See \href{https://ggplot2.tidyverse.org/reference/theme.html}{theme()} for complete documentation.
#'
#' @export
theme_simple <- function () { 
    theme_bw(base_size=12, base_family="") %+replace% 
        theme(
            plot.background = element_rect(fill="transparent", colour=NA), 
            legend.background = element_rect(fill="transparent", colour=NA),
            legend.key = element_rect(fill="transparent", colour=NA),
            legend.title=element_text(size=14),
            legend.text=element_text(size=12),
            axis.line = element_line(color = "black", linewidth = .75, linetype = "solid"),
            axis.ticks = element_line(colour = "black", linewidth = .75),
            panel.background  = element_blank(),
            panel.grid.minor = element_blank(),
            panel.grid.major = element_blank(),
            panel.border = element_blank(),
            legend.position = "bottom",
            plot.title = element_text(size=16, hjust = 0.0, vjust = 1.75),
            axis.text.x = element_text(color="black", size=12, margin = margin(t = 4, r = 0, b = 0, l = 0)),
            axis.text.y = element_text(color="black", size=12, margin = margin(t = 0, r = 4, b = 0, l = 0)),
            axis.title.y = element_text(margin = margin(t = 0, r = 10, b = 0, l = 0), angle = 90, size = 14),
            axis.title.x = element_text(margin = margin(t = 10, r = 0, b = 0, l = 0), angle = 0, size = 14),
            axis.ticks.length = unit(0.20, "cm"),
            strip.background = element_rect(color="black", linewidth=.75, linetype="solid"),
            strip.text.x = element_text(size = 12, color = "black"),
            strip.text.y = element_text(size = 12, color = "black")
        )
}