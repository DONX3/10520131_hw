rm(list=ls())
library(ggplot2)

#選擇工作路徑
p <- choose.dir(,"請選擇下列檔案所在資料夾\n data2015.csv\tdata2016.txt\tdata2017.xlsx")
if (is.na(p)) {
  print("Byebye~")
} else {
  setwd(p)
  
  #讀入csv txt xlsx檔並存成data.frame
  file1 <- read.table("data_part_1.csv", sep=",", header = TRUE)
  file2 <- read.table("data_part_2.csv", sep=",", header = TRUE)
  file3 <- read.table("data_part_3.csv", sep=",", header = TRUE)
  file4 <- read.table("data_part_4.csv", sep=",", header = TRUE)
  file5 <- read.table("data_part_5.csv", sep=",", header = TRUE)
  file6 <- read.table("data_part_6.csv", sep=",", header = TRUE)
  file7 <- read.table("data_part_7.csv", sep=",", header = TRUE)

  #資料合併
  re_all_data <- rbind(file1, file2, file3, file4, file5, file6, file7)
  re_total_len <- length(re_all_data[,1])
  
  #欄位塞選
  #取單排的子集
  solo_fpp_data <- subset(re_all_data, matchType=="solo-fpp")
  length(solo_fpp_data[,1])
  
  #取四排的子集
  squad_fpp_data <- subset(re_all_data, matchType=="squad-fpp")
  length(squad_fpp_data[,1])
  
  #取單排或四排的子集
  solo_or_squad_fpp_data <- subset(re_all_data, matchType=="solo-fpp"|matchType=="squad-fpp")
  length(solo_or_squad_fpp_data[,1])
  
  #繪圖
  #大概介紹用到的函式
  #ggplot 生成畫布和指定數據集和xy軸對應欄位
  #geom_point 將座標畫上畫布
  #geom_histogram 數量分布圖

  #solo_fpp_walkDistance_damageDealt.png
  ggplot(solo_fpp_data, aes(x = walkDistance, y = damageDealt)) + geom_point(size = 1)
  
  #squad_fpp_walkDistance_damageDealt.png
  ggplot(squad_fpp_data, aes(x = walkDistance, y = damageDealt)) + geom_point(size = 1)
  
  #solo_or_squad_fpp_walkDistance_damageDealt
  ggplot(solo_or_squad_fpp_data, aes(x = walkDistance, y = damageDealt)) + geom_point(aes(shape=matchType, color=matchType),size = 1)
  
  #solo_or_squad_fpp_winPlacePerc_kills.png
  ggplot(solo_or_squad_fpp_data, aes(x = winPlacePerc, y = kills)) + geom_point(aes(shape=matchType, color=matchType),size = 1)
  
  #solo_or_squad_fpp_winPlacePerc_kills_count.png
  ggplot(solo_or_squad_fpp_data) + geom_histogram(aes(x=winPlacePerc, fill=kills)) + facet_grid(.~kills)
  
  #ggplot(squad_fpp_data, aes(x = DBNOs)) + geom_bar()
  
  
  #solo_or_squad_fpp_vehicleDestroys_winPlacePerc.png
  ggplot(solo_or_squad_fpp_data, aes(x = vehicleDestroys, y = winPlacePerc)) + geom_point(aes(shape=matchType, color=matchType),size = 1)
  #solo_or_squad_fpp_vehicleDestroys_winPlacePerc_cout.png
  ggplot(solo_or_squad_fpp_data) + geom_histogram(aes(x=winPlacePerc, fill=vehicleDestroys)) + facet_grid(.~vehicleDestroys)
  
  #solo_or_squad_fpp_vehicleDestroys_winPlacePerc.png
  ggplot(solo_or_squad_fpp_data, aes(x = boosts, y = winPlacePerc)) + geom_point(size = 1)
  ggplot(solo_or_squad_fpp_data, aes(x = heals, y = winPlacePerc)) + geom_point(size = 1)
  
  #取單排或四排的子集
  solo_or_squad_fpp_data <- subset(re_all_data, )
  length(solo_or_squad_fpp_data[,1])
  
  #solo_or_squad_fpp_vehicleDestroys_winPlacePerc_cout.png
  ggplot(solo_or_squad_fpp_data) + geom_histogram(aes(x=winPlacePerc, fill=heals)) + facet_grid(.~heals)
}
