library(rvest)
library(tidyr)

halo_infinite <- read_html("https://steamcharts.com/app/1240440")

stat_halo <- halo_infinite %>% html_nodes("span") %>% html_text()


halo_stat <- as.data.frame(stat_halo)

halo_last_30_min <- halo_stat[3,]
halo_last_24h_peak <- halo_stat[4,]



halo_mcc <- read_html("https://steamcharts.com/app/976730")


stat_halo_mcc <-halo_mcc %>% html_nodes("span") %>% html_text()




halo_mcc_stat <- as.data.frame(stat_halo_mcc)

halo_mcc_last_30_min <- halo_mcc_stat[3,]
halo_mcc_last_24h_peak <- halo_mcc_stat[4,]





battlefield_1 <- read_html("https://steamcharts.com/app/1238840")

stat_bf_1 <- battlefield_1 %>% html_nodes("span") %>% html_text()


bf_1_stat <- as.data.frame(stat_bf_1)

bf1_last_30_min <- bf_1_stat[3,]
bf_1_last_24h_peak <- bf_1_stat[4,]









