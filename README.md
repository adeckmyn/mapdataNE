#mapdataNE
### a supplement R package to maps

This R package contains map data similar to the existing mapdata package. The data is derived from [Natural Earth](http://www.naturalearthdata.com).

The R and C code in this package are derived from "mapdata" maintained by Ray Brownrigg.

##DATA SOURCE

All data in this package was derived from the Natural Earth project
http://www.naturalearthdata.com

- 1/10m scale world dataset (world10, lakes10, rivers10):
ne_10m_admin_countries_lakes version 3.1.0 (December 2013)

This dataset may serve as un update to worldHires in most cases, with two caveats:
i  * the resolution is slightly lower,
   * it contains many more islands.

- 1/50m scale world dataset (world50): slightly lower resolution

All data is in the public domain.

The data was reformatted for use with the maps package.


##C CODE

The C and R code in this package was adapted from the "mapdata" package at CRAN, maintained by Ray Brownrigg.

##POLYGON NAMES

The naming of the polygons is as close as possible to that in the original maps data base. Not all small islands are named. These may be identified in future versions (help is welcome).

#TO DO

I don't plan to work much on the C code etc. in this package. Unless problems arise, of course.

The actual polygons/lines are currently from Natural Earth v3.1.0 (December 2013). 
- Continuing effort on *polygon names*:
  * Correct any mistakes & inconsistencies (I'm sure there are many)
  * Identify more of the unnamed polygons (mostly small islands). Not a priority.
- Some islands groups are spread over the 180 line. Difficult to map. Even some small Russian islands appear on the other side of the map.
- A pacific-centered version (world10pc, world50pc) is created on the fly. But as with the older world2 and world2Hires, it doesn't work with fill=TRUE.
- Add rivers & lakes data sets.
- Add world110 for large maps.


