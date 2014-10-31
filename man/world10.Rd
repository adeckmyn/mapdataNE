\name{world10}
\docType{data}
\alias{world10}
\alias{lakes10}
\alias{rivers10}
\alias{world50}
\title{
World Map (Natural Earth data)
}
\usage{data(world10MapEnv)}
\description{
These are data sets derived from the "Natural Earth" data project. They provide natural and political boundaries updated up to 2013. \code{world10} is a high resolution (scale 1/10m) data base of political borders.
\code{world50} has a slightly lower resolution (50m), making it more appropriate for large areas.
}
\format{
The data file is in fact an assignment specifying the name of an environment variable which contains the
base location of the binary files used by the map drawing functions.
This environment variable (\code{R_MAPDATANE_DATA_DIR} for the datasets in the
mapdataNE package) is set when the package is loaded.
}
\source{
The data used for the preparation of this library were obtained from
\url{http://www.naturalearthdata.com}.
}
\seealso{
\code{\link[maps]{map}}, \code{\link[maps]{world}}
}
\examples{
map('world10', 'Belgium')
title('Belgium')
}
\references{
Richard A. Becker, and Allan R. Wilks,
"Maps in S",
\emph{AT\&T Bell Laboratories Statistics Research Report [93.2], 1993.}

Richard A. Becker, and Allan R. Wilks,
"Constructing a Geographical Database",
\emph{AT\&T Bell Laboratories Statistics Research Report [95.2], 1995.}
}
\keyword{datasets}
