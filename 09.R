# how to make multivariate analysis in R with remote sensing data

library(terra)
library(imageRy)
library(viridis) # for the final plot

im.list()

b2 <- im.import("sentinel.dolomites.b2.tif")  
b3 <- im.import("sentinel.dolomites.b3.tif")  
b4 <- im.import("sentinel.dolomites.b4.tif")  
b8 <- im.import("sentinel.dolomites.b8.tif")  

sentdo <- c(b2, b3, b4, b8)

im.plotRGB(sentdo, 4, 3, 2)

pairs(sentdo)
