#Installing new packages in R
install.packages("terra") #funzione per installare pacchetti, dentro alle () ci metto il nome del paccheto, usiamo le virgolette per proteggerci
library()  #carica il pacchetto dentro R  # or require()
#errore rosso= warning, non molto gravi, da controllare ma r va comunque avanti. error=problema
#funzione per rimuovere pacchetti: remove.packages()

# install.packages("devtools")
library(devtools)

# install the imageRy package from GitHub
# a devtools function:
# install_github("ducciorocchini/imageRy")

library(imageRy)
