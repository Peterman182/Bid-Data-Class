2+2
seq (1,100)
mi_seq <- seq (1,100)
?seq
###### Asignar una matriz 
matriz1 <- matrix (seq(1,9), nrow=3, nco=3)
numerros<- c(1,2,3)
texto<- c("hola", "como", "estas")
booleanos <- c(TRUE, FALSE, TRUE)
data.frame<- data.frame(numerros, texto, booleanos)
data.frame
matriz[1:2, 1:2]
matriz[1:2, 1:2]+ 111
data.frame[2:3,2:3]
matriz[matriz>3]<- 999
library(raster)
library(sp)

matriz1 <- matrix (seq(1,9), nrow=3, nco=3)
raster_matriz<- raster(matriz1)
plot(raster_matriz)
points(0.25,0.75,pch=21,bg="red",cex=2)
nuevo<- raster_nuevo= raster_matriz - 0.3* (raster_matriz)

##############################Jugar con los datos 
library(rasterVis)
library(lattice)
library(ggplot2)
library(rgdal)


setwd()
getwd()
rapid_eye<- raster("D:/R/BigData/curso_r_conabio/1crop.tif")
raster_rapid_eye<- brick ("D:/R/BigData/curso_r_conabio/1crop.tif")
plotRGB(raster_rapid_eye, r=3, g=2, b=1)
dim(raster_rapid_eye)

Vis1<- subset(raster_rapid_eye, subset=3)
NIR1<- subset(raster_rapid_eye, subset=5)

par(mfrow=c(1,2))
plot(Vis1,main='Vis')
plot(NIR1,main='NIR')

ndvi <- (Vis1-NIR1)/(Vis1+NIR1)
plot(ndvi)
par(mfrow=c(1,1))

rf<- writeRaster(ndvi, filename="ndvi.tif",format="GTiff", overwrite=TRUE)


















