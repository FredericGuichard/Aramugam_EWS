#library(devtools)
setwd("~/Desktop/EWS/Fig5/EWS/AutVar")
library(earlywarnings)

source('~/Desktop/EWS/Fig5/EWS/AutVar/myp_ews.r', echo=TRUE)
source('~/Desktop/EWS/Fig5/EWS/AutVar/generic_RShiny.R', echo=TRUE)



ds2 <- read.table("hb.dat", quote="\"", comment.char="")



autsd <- myp_ews(ds2, param = NULL, winsize = 50, detrending='gaussian', bandwidth=10,
               boots = 100, s_level = 0.05, cutoff=0.05, detection.threshold = 0.002, grid.size = 50,
               logtransform=FALSE, interpolate=FALSE)

write.table(autsd, file="AV_HB.dat", append = FALSE, sep = "\t",row.names = FALSE, col.names = TRUE)