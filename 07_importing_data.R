library(terra)
library(imageRy)

setwd("C:\Users\Utente\Downloads")
# usa slash invece di backslash
# Esempio: C://Documents/ invece di C:\\Documents\ 

setwd("C:/Users/Utente/Downloads")
# prendi il nome che c'è scritto nelle proprietà dell'immagine
eclissi <- rast("eclissi.jpg")
eclissi

# plotting the data
im.plotRGB(eclissi, 1, 2, 3) # appare l'immagne che abbiamo scaricato
im.plotRGB(eclissi, 3, 2, 1) # viene più verde
im.plotRGB(eclissi, 2, 3, 1) # color magenta
im.plotRGB(eclissi, 2, 1, 3) # color arancio/ocra

# band difference
dif = eclissi[[1]] - eclissi[[2]]
plot(dif)


