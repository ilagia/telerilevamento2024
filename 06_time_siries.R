#Second method to quantify changes in time
#first method was based on classification

library(imageRy)
library(terra)

im.list()

#import the data #prendo il primo e l'ultimo

EN01 <- im.import("EN_01.png")
EN13 <- im.import("EN_13.png")

par(mfrow=c(2,1))
im.plotRGB.auto(EN01) #auto usa le prime 3 bande in automatico
im.plotRGB.auto(EN13)

difEN = EN01[[1]] - EN13[[1]]
cl <- colorRampPalette(c("blue", "white","red")) (100)
plot(difEN, col=cl)









