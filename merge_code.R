# combine the two year dataset
library(haven)
gshs.data.full <- foreach(year=1:2, .combine="rbind") %do% {
  filename <- paste0("~/Desktop/INTERNSHIP/data/gshs_",year, ".csv")
  this.data1 <- read_csv(filename)
  this.data1
}
gshs_full <- gshs.data.full

table(gshs_full$year)
write.csv(gshs_full,"~/Desktop/INTERNSHIP/data/gshs_full.csv", row.names = FALSE)
