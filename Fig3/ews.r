#library(devtools)
setwd("~/Dropbox/Noise/Figures/Fig2")
library(earlywarnings)

source('~/Dropbox/Noise/Figures/Fig2/myp_ews.r', echo=TRUE)
source('/Dropbox/Noise/Figures/Fig2/generic_RShiny.R', echo=TRUE)




ds2 <- read.table("tb38.dat", quote="\"", comment.char="")


nor_res <- myp_ews(ds2, param = NULL, winsize = 50, detrending='gaussian', bandwidth=50,
               boots = 100, s_level = 0.05, cutoff=0.05, detection.threshold = 0.002, grid.size = 50,
               logtransform=FALSE, interpolate=FALSE)


write.table(nor_res, file="nor_res_TB.dat", append = FALSE, sep = "\t",row.names = FALSE, col.names = TRUE)


