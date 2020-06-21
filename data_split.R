rm(list=ls())

#選擇工作路徑
p <- choose.dir(,"請選擇下列檔案所在資料夾\n data2015.csv\tdata2016.txt\tdata2017.xlsx")
if (is.na(p)) {
  print("Byebye~")
} else {
  setwd(p)
  
  #讀入csv txt xlsx檔並存成data.frame
  total_data <- read.table("train_V2.csv", sep=",", header = TRUE)
  head(total_data, 100L)
  total_len <- length(total_data[,1])
  split_len <- as.integer(length(total_data[,1])/7)
  lapply(c(1:7), function(x){
    filename <- paste0("data_part_", as.character(x), ".csv")
    if (x == 7) {
      write.table(total_data[c((6*split_len+1):(length(total_data[,1]))),], file = paste(getwd(),"/", filename, sep = ""), sep = ",", row.names = FALSE)
    } else {
      write.table(total_data[c(((x-1)*split_len+1):(x*split_len)),], file = paste(getwd(),"/", filename, sep = ""), sep = ",", row.names = FALSE)
    }
    print(paste0("data_part_", as.character(x), ".csv finished!"))
  })
}
