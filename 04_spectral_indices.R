# vegetation indices

#richiama pacchetti
library(imageRy)
library(terra)

#list of files
im.list
#importing data
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
# band 1 =nir
# band 2 = red
# band 3 = green

#plot RGB
im.plotRGB(m1992, 1, 2, 3)

#exercise: put the nir ontop of the G compnent
im.plotRGB(m1992, 2, 1, 3) #ricoedati l'ordine RGB

#per evidenziare ancora di più il suolo nudo: nir ontop of B component
im.plotRGB(m1992, 2, 3, 1)

#importing 2006 image
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")

# nir on G component
im.plotRGB(m2006, 2, 1, 3)

#nir on the B component
im.plotRGB(m2006, 2, 3, 1)







