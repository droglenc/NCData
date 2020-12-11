library(NCStats)
set.seed(353453443)
ns <- c(28,28,28,29)
mns <- c(11.5,11.15,11.2,10.7)
ses <- c(0.13,0.18,0.20,0.15)
sds <- ses*sqrt(ns)

d <- NCStats::mrnorm(ns,mns,sds,digits=1,
                     var.labels=c("TL","Treatment"),
                     grp.labels=c("Control","Small","Medium","Large"))

write.csv(d,file="C:/aaaWork/Data/NCData/Salamanders.csv",
          quote=FALSE,row.names=FALSE)
