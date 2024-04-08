# quantifying land cover change

#install.packages("ggplot2")

library(terra)
library(imageRy)
library(ggplot2)

im.list()
# im.classify() #da specificare  il n. di cluster, classi, da usare
# https://www.esa.int/ESA_Multimedia/Images/2020/07/Solar_Orbiter_s_first_views_of_the_Sun6
# additional images: https://webbtelescope.org/contents/media/videos/1102-Video?Tag=Nebulas&page=1
sun <- im.import( "Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")

# importing images
sun <- im.import( "Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")

sinc <- im.classify2(sun,num_clusters=3)
 plot(m1992c) 

#import mato grosso images
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")

m1992c <- im.classify(m1992, num_clusters=2)   
# class 1= human 
# class 2 = forest
#possono anche essere invertite

m2006c <- im.classify(m2006, num_clusters=2)
# class 1 = foresta
# class 2 = human #o al contrario

#quanti pixel appartengono a ogni classe?
#frequencies
f1992 <- freq(m1992c)
f1992
#proportions
#ci serve il numero totale di pixel dell'immagine
tot1992 <- ncell(m1992c)
tot1992

#adesso divido i due valori ottenuti prima per il totale
prop1992 = f1992 / tot1992
prop1992
#percentages
perc1992 = prop1992 *100 
perc1992

#1992  17% human, 83% forest

f2006 <- freq(m2006c)
f2006
tot2006 <- ncell(m2006c)
tot2006
prop2006 = f2006 / tot2006
prop2006
perc2006 = prop2006 *100 
perc2006

#2006 45% forest 55% human

#let's built a dataframe
class <- c("forest","human") #metto le virgolette così il sistema sa che sono parole e non numeri
p1992 <- c(83, 17)
p2006 <- c(45, 55)

tabout <- data.frame(class, p1992, p2006)
tabout

#plotting the output
ggplot(tabout, aes(x=class, y=p1992, color=class)) + geom_bar(stat="identity", fill="white") 
#il colore lo prendi dalle classi # identity e white sono per il copore del 2p e dell'interno delle colonne dell'istogramma

#stessa cosa per grafico 2006
ggplot(tabout, aes(x=class, y=p2006, color=class)) + geom_bar(stat="identity", fill="white")

#install.packages("patchwork")
library(patchwork)

p1 <- ggplot(tabout, aes(x=class, y=p1992, color=class)) + geom_bar(stat="identity", fill="white") 
p2 <- ggplot(tabout, aes(x=class, y=p2006, color=class)) + geom_bar(stat="identity", fill="white")
p1 + p2

#per fare in modo che i due grafici abbiano la stessa scala aggiungo un'altra funzione
p1 <- ggplot(tabout, aes(x=class, y=p1992, color=class)) + geom_bar(stat="identity", fill="white") + ylim(c(0,100))
p2 <- ggplot(tabout, aes(x=class, y=p2006, color=class)) + geom_bar(stat="identity", fill="white") + ylim(c(0,100))
p1 + p2



















