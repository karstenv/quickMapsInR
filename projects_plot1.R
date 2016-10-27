ccrpprojects <- read.csv("h:/projects/McKnight/data/mapdata/ccrp/country/malawi/projects/bestbests/bb.csv",dec =".")
head(ccrpprojects)
library(sp)
#change the ccrpprojects data into a SpatialPointsDataFrame
coords <- cbind(Longitude = as.numeric(ccrpprojects$x), Latitude = as.numeric(ccrpprojects$y))
ccrpprojects.pts <- SpatialPointsDataFrame(coords, ccrpprojects[, -(5:6)], proj4string = CRS("+init=epsg:4326"))
plot(ccrpprojects.pts, pch = ".", col = "darkred")