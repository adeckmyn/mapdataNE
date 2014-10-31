.onLoad <- function(lib, pkg) {
  Sys.setenv("R_MAPDATANE_DATA_DIR"=paste(lib, pkg, "mapdata/", sep="/"))
}
