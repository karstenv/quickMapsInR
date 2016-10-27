library(sp)
library(ggmap)    # loads ggplot2 as well
ccrpprojects <- read.csv("h:/projects/McKnight/data/mapdata/ccrp/country/malawi/projects/bestbests/mzimba.csv", stringsAsFactors=FALSE)
bbox <- ggmap::make_bbox(x, y, ccrpprojects , f = 0.5)
# head(ccrpprojects)
mw <- get_map(location = bbox, zoom = 11, source='osm', color = 'bw')
    ggmap(mw) +
        geom_point(aes(as.numeric(x), as.numeric(y), size = top_soil_ph*100, bins= 4 ), data = ccrpprojects , alpha =.5, color = "darkred")