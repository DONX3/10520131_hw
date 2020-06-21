rm(list=ls())
library(DT)
library(xlsx)

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
  
  re_all_data <- rbind(file1, file2, file3, file4, file5, file6, file7)
  re_total_len <- length(re_all_data[,1])
}
