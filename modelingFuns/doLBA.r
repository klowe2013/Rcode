doLBA <- function(nTrials, driftMu, driftSig){
  
  startMu <- 0
  startSig <- 0
  thresh <- 10000
  threshSig <- 0
  
  startPoints <- rnorm(nTrials, startMu, startSig)
  endPoints <- rnorm(nTrials, thresh, threshSig)
  
  driftRates <- rnorm(nTrials, driftMu, driftSig)
  
  accumDist <- endPoints-startPoints
  
  rtDistro <- accumDist/driftRates
  
  return(rtDistro)
}