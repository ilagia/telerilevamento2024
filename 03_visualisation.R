# Satellite data visualisation in R by imageRy
# https://sentinels.copernicus.eu/web/sentinel/user-guides/sentinel-2-msi/resolutions/spatial

library(terra)
library(imageRy)

# List of data avialable in imageRy
im.list() #ti dice cosa c'è dentro


# Importing data
b2 <- im.import("sentinel.dolomites.b2.tif")

# Plotting the data
clg <- colorRampPalette(c("black", "grey", "light grey"))(3)  #metto la parentesi con c per raggrupparli insieme #assegnamo la crp a un oggetto# il 3 indica le sfumature
plot(b2,col=clg)

clg <- colorRampPalette(c("black", "grey", "light grey"))(100)
plot(b2, col=clg)

clcyan <- colorRampPalette(c("magenta", "cyan4", "cyan"))(3)
plot(b2, col=clcyan)

clcyan <- colorRampPalette(c("magenta", "cyan4", "cyan"))(100)
plot(b2, col=clcyan)

clch <- colorRampPalette(c("magenta", "cyan4", "cyan", "chartreuse"))(100)
plot(b2, col=clch)
# importing the additional bands #importiamo tutte e 4 le bande, come? guarda dati presi da im.list

b3<- im.import("sentinel.dolomites.b3.tif")
plot(b3, col=clch)

b4<- im.import("sentinel.dolomites.b4.tif")
plot(b4, col=clch)
b8<- im.import("sentinel.dolomites.b8.tif") #infrarosso
plot(b8, col=clch)
# multiframe # creiamo una finestra grafica con le quattro immagini tutte insieme
par(mfrow=c(2,2)) #righe e colonne
plot(b2, col=clch)
plot(b3, col=clch)
plot(b4, col=clch)
plot(b8, col=clch)

# Exercise
# plot the four bands one after the other in a single row
par(mfrow=c(1,4))
plot(b2, col=clch)
plot(b3, col=clch)
plot(b4, col=clch)
plot(b8, col=clch)

# Let's make a satellite image
stacksent <- c(b2, b3, b4, b8) #stesso risultato di prima(grafico a quattro immagini) ma senza plottare ogni volta
plot(stacksent, col=clch)
plot(stacksent[[4]], col=clch) #riunisco in un unica immagine tette e quattro le altre, "le metto una sopra l'altra"
dev.off() #per chiudere le finestre grafiche

# fast recup
library(terra)
library(imageRy)
im.list
b2 <- im.import("sentinel.dolomites.b2.tif")

b3 <- im.import("sentinel.dolomites.b3.tif")

b4 <- im.import("sentinel.dolomites.b4.tif")

b8 <- im.import("sentinel.dolomites.b8.tif")

par(mfrow=c(2,2))
plot(b2)
plot(b3)
plot(b4)
plot(b8)
stacksent <- c(b2,b3,b4,b8)
plot(stacksent)


#RGB plotting #modo per usare più bande insieme invece di una alla volta anche con spettro invisibile
#stacksent[[1]] = b2 = blue
#stacksent[[2]] = b3 = green
#stacksent[[3]] = b4 = red
#stacksent[[4]] = b8 = nir

im.plotRGB(stacksent, 3, 2, 1) # mettiamo 3-2-1 perchè è l'ordine in cui i layer sono disposti nella "realtà"#r=3, g=2, b= 1

#vogliamo usareanche il nir ma ho solo 3 bande non 4 quindi: nir=4, r=3, g=2 nir si vedrà come rosso, r come verde e g come blu. 
#posso anche tenere 4, 2, 1 -- ricorda: le piante riflettono il nir quindi tutto quello che è rosso è vegetazione
im.plotRGB(stacksent, 4, 2, 1)

#multiframe
par(mfrow=c(1,2))
im.plotRGB(stacksent, 3, 2, 1)
im.plotRGB(stacksent, 4, 2, 1)

par(mfrow=c(1,3))
im.plotRGB(stacksent, 3, 2, 1)
im.plotRGB(stacksent, 4, 2, 1)
im.plotRGB(stacksent, 4, 3, 2) #imm. a falsi colori

im.plotRGB(stacksent, 3, 4, 2) #nir su green, vegetazione verde, roccia grigina/bianca,aree urbane rosa. uso per discriminare veg prato/agricolo da foresta
im.plotRGB(stacksent, 3, 2, 4)

#final multiframe
par(mfrow=c(2,2))
im.plotRGB(stacksent, 3, 2, 1)
im.plotRGB(stacksent, 4, 2, 1)
im.plotRGB(stacksent, 3, 4, 2)
im.plotRGB(stacksent, 3, 2, 4)







