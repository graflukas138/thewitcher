library(tidyverse)

map <- list()

#' Complete list of palettes
#'
#' Use \code{\link{witcher}} to construct palettes of desired length.
#'
#' @export
#'

witcher_palettes <- list(
  aard = c("#12141F","#154d47", "goldenrod3", "goldenrod1"),
  axi =  c("#12141F", "#4e0002", "#9D0005", "darkgreen", "lightgreen"),
  ciri = c("#12141F", "#444444", "#60AA42", "#C4B92A", "#F6E8B1", "#FFFFF0"),
  dandelion = c("#82B5C4", "#A9BC7E", "#D7C42A", "#CDA25C", "#C37E90"),
  emhyr = c("#031717","#444444", "#591D18", "#800000", "goldenrod3", "goldenrod1"),
  francesca = c("#9f2f38", "#ea7b74","goldenrod3", "goldenrod1"),
  geralt =c("#000000", "#444444","#d3d3d3",  "goldenrod1"),
  griffin = c("#142044", "#3454b4", "#FB7E00", "#FFA700"),
  gwent = c("#338a0d", "#5b9e32", "#60AA42", "#C4B92A", "#e7d704"),
  igni = c( "#B20000", "#ED4700","#EF7300","#FF9517","#F1B043"),
  kaermorhen = c("#362204","#444444", "#739bd0", "#a0bbdf", "#d3d3d3"),
  katakan = c("#031717", "#142044", "#3454b4", "#F0C75E", "#ECB939"),
  leshen = c("#031717","#3D1B02","#472c0b", "#7e5522", "#7f793c", "#565c33"),
  necrophage = c( "#444444","#291D15", "#8C5A3C", "#966446", "#C88C6E", "#CC1100"),
  nilfgaard = c("#12141F", "#444444", "goldenrod3", "goldenrod1"),
  olgierd = c("darkorchid1", "darkorchid4","dodgerblue3","darkturquoise","cyan" ),
  quen = c("#444444","#291D15","#C9E043","#CEF007"),
  redbaron = c("#660000", "#8B0000", "#800000", "#CC1100", "#DC143C"),
  roach = c("#877426", "#C0B65A", "#e1c292", "#e7d8c0"),
  roche = c("#0b5394","#2d7fc9", "#6fa8dc", "#C4B92A", "#e7d704"),
  school_bear = c("darkgreen","#792427", "#545058", "#444444"),
  school_cat = c("#966628", "#AAA549", "dodgerblue3","dodgerblue1"),
  school_griffin = c("#12141F", "#154d47", "#0e9688","goldenrod3", "goldenrod1"),
  school_manticore = c("#232D37", "#37414B", "#889999", "#AAB7AF", "#5D7850"),
  school_viper = c("#6A2073","#3A005C", "#066908", "#07F00B","#474D47","#A6ADA6"),
  school_wolf = c("#5C4000","#9c6849", "#735852", "#660000", "#8B0000"),
  skellige = c("dodgerblue3","dodgerblue1", "#CC1100", "#DC143C", "#F2EAD8"),
  temeria = c("#0527A1","dodgerblue3", "#800000", "#CC1100"),
  toussaint = c("lightgreen","darkgreen", "#CA001B", "#F52156","dodgerblue3","darkturquoise"),
  triss =c("#CA001B", "#F52156","dodgerblue3","darkturquoise"),
  uma = c("#5C4000","#9c6849", "#8C5A3C", "#966446", "dodgerblue3","darkturquoise"),
  wildhunt = c("#232D37", "#37414B","#889999", "#AAB7AF","#739BD0"),
  yennefer = c("#12141F", "#444444", "#8800FF", "#9F97FC", "#CB99C9"),
  yrden = c("#12141F","#444444", "#8800FF","#9F97FC", "#01480f", "#027218")
)


#' Expand list of palettes
#'
#' @keywords internal
#'

# Expand palette to accept contiuous scales or longer discrete scales
complete_palette <- function(option, n = 3e3) {
  complete_col <- c()
  for (i in 1:(length(option) - 1)) {
    cols <- colorRampPalette(c(option[i], option[i + 1]))
    complete_col <- c(complete_col, cols(n))
  }
  return(complete_col)
}


#' make map of colors
#'
#' @importFrom grDevices colorRampPalette n2mfrow
#' @importFrom graphics image par text
#' @keywords internal
#'

# Build DF map
make_map <- function(palettes, option_name) {
  palettes[[option_name]] %>%
    complete_palette() %>%
    grDevices::col2rgb() %>%
    t() %>%
    as.data.frame() %>%
    dplyr::rename(V1 = red) %>%
    dplyr::rename(V2 = green) %>%
    dplyr::rename(V3 = blue) %>%
    dplyr::mutate(option = option_name)
}

for (h in names(witcher_palettes)) {
  df <- make_map(witcher_palettes, h)
  map <- rbind(map, df)
}

witcher.map <- map
usethis::use_data(witcher.map, internal = TRUE, overwrite = TRUE)
usethis::use_data(witcher_palettes, overwrite = TRUE)
usethis::use_pipe(export = TRUE)
utils::globalVariables(c("red", "green", "blue", "option_name"))
