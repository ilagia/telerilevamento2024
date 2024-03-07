#First R script

#operazioni matematiche
a <- 6 * 7
b <- 5 * 8

a + b
# Arrays(vettori, serie di dati concatenati insieme)

flowers <- c(3, 6, 8, 10, 15, 18) #per tenerli insieme e non far leggere solo il primo uso la parentesi
flowers

insects <- c(10, 16, 25, 45, 61, 72)
insects

plot(flowers, insects) #creo un grafico con i due valori)

#champain plot parameters
#symbols
plot(flowers, insects, pch=19)

plot(flowers, insects, pch=19, cex=2)
plot(flowers, insects, pch=19, cex=.5)
plot(flowers, insects, pch=19, cex=.5, col="chocolate1") #i colori si indicano tra virgolette


