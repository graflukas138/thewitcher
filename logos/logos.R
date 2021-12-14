
library(ggstamp)
library(tidyverse)
library(theWitcher)

option = "Aard"

set.seed(42069)
p1 <-tibble::tibble(x = rnorm(90000, sd = .7),
               y = rnorm(90000, sd = .7)) %>%
 ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color = "black", size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p1

option = "Axi"

p2 <-tibble::tibble(x = rnorm(90000, sd = .7),
                    y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color = "black", size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p2

option = "Ciri"

p3 <-tibble::tibble(x = rnorm(90000, sd = .7),
                    y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color = "black", size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p3


option = "Emhyr"

p4 <-tibble::tibble(x = rnorm(90000, sd = .7),
                    y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color = "black", size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p4


option = "Geralt"

p5 <-tibble::tibble(x = rnorm(90000, sd = .7),
                    y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color = "black", size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p5

option = "Griffin"

p6 <-tibble::tibble(x = rnorm(90000, sd = .7),
                    y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color = "Black", size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p6

option = "Igni"

prandom <-tibble::tibble(x = rnorm(90000, sd = .7),
                    y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color = "Black", size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();prandom


option = "Kaermorhen"

p8 <-tibble::tibble(x = rnorm(90000, sd = .7),
                    y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = "Kaer Morhen",
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p7

option = "Katakan"

p9 <-tibble::tibble(x = rnorm(90000, sd = .7),
                    y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p9

option = "Leshen"

p10 <-tibble::tibble(x = rnorm(90000, sd = .7),
                    y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p10

option = "Necrophage"

p11 <-tibble::tibble(x = rnorm(90000, sd = .7),
                    y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p11

option = "Nilfgaard"

p12 <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p12

option = "Olgierd"

p13 <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p12

option="Quen"

p14 <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p14


option="Dandelion"

p15 <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p15


option="redbaron"

pbaron <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = "Red Baron",
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();pbaron

option="school_bear"

p17 <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = "School of the Bear",
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p17


option="school_cat"

p18 <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = "School of the Cat",
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p18


option="school_griffin"

p19 <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = "School of the Griffin",
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p19



option="school_manticore"

p20 <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = "School of the Manticore",
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p20

  option="school_viper"

p21 <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = "School of the Viper",
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p21


option="school_wolf"

p22 <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = "School of the Wolf",
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p22


option="Skellige"

p23 <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p23

option="Temeria"

p24 <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p24

option="Toussaint"

p25 <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p25

option="Triss"

p26 <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p26

option="Uma"

p27 <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p27


option="Wildhunt"

p28 <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p28

option="Yennefer"

p29 <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p29


option="Yrden"

p30 <-tibble::tibble(x = rnorm(90000, sd = .7),
                     y = rnorm(90000, sd = .7)) %>%
  ggplot() +
  aes(x = x, y = y) +
  geom_hex(show.legend = F, bins= 35, color = alpha("white", 0)) +
  scale_fill_witcher(option=option, direction=1)+
  coord_equal() +
  stamp_polygon_inverse(radius = 1.8, radius_outer = Inf, fill="white", color="white", size=4)  +
  stamp_text(angle = 0, label = option,
             color ="black",size =20, y=2.6, x=-0.1) +
  stamp_polygon(radius = 2,
                alpha = 0, size = 3,
                color = "black") +
  theme_void();p30

rm(option)

list = lapply(ls(), get)

library(patchwork)

wrap_plots(list)

for (i in 1:30) {
  ggsave(paste(i,".png", sep="_") ,plot=list[[i]], device="jpg", width = 4.5, height = 4.5, dpi=600)
}


