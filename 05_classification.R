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







