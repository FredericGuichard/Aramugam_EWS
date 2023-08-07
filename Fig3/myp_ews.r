myp_ews <- function(timeseries, param = NULL, winsize = 50, detrending = c("no", 
                                                                           "gaussian", "linear", "first-diff"), bandwidth = NULL, boots = 100, s_level = 0.05, 
                    cutoff = 0.05, detection.threshold = 0.002, grid.size = 50, logtransform = FALSE, 
                    interpolate = FALSE) {
  
  timeseries <- data.matrix(timeseries)
  message("Indicator trend analysis")
  g <- generic_RShiny(timeseries, winsize, detrending, bandwidth, logtransform, 
                      interpolate, AR_n = FALSE, powerspectrum = FALSE)
  
return(g)
}