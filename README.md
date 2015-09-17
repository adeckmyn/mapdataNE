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
   * the resolution is slightly lower,
   * it contains many more islands.

All data is in the public domain.

The data was reformatted for use with the maps package.


##C CODE

The C and R code in this package was adapted from the "mapdata" package at CRAN.

##POLYGON NAMES

The naming of the polygons is similar than in mapdata, but the rules of naming are a bit more strict. *entity:sub-ntity:sub-sub-entity* is still applied, but in cases where various (remote) territories have different ISO country classification, they are not all attached to the same base entity.


#TO DO

I don't plan to work much on the C code etc. in this package. Unless problems arise, of course.

The actual polygons/lines are currently from Natural Earth v3.1.0 (December 2013). 
- Continuing effort on *polygon names*:
  * Correct any mistakes & inconsistencies (I'm sure there are many)
  * Identify more of the unnamed polygons (mostly small islands). Not a priority.
- Some islands groups are spread over the 180 line. Difficult to map. Even some small Russian islands appear on the other side of the map.
- Add NE10 rivers, lakes & cities data sets.


