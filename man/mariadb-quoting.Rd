% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quote.R
\docType{methods}
\name{mariadb-quoting}
\alias{mariadb-quoting}
\alias{dbQuoteIdentifier,MariaDBConnection,character-method}
\alias{dbQuoteIdentifier,MariaDBConnection,SQL-method}
\alias{dbQuoteIdentifier,MariaDBConnection,Id-method}
\alias{dbUnquoteIdentifier,MariaDBConnection,SQL-method}
\alias{dbQuoteString,MariaDBConnection,character-method}
\alias{dbQuoteString,MariaDBConnection,SQL-method}
\title{Quote MariaDB strings and identifiers.}
\usage{
\S4method{dbQuoteIdentifier}{MariaDBConnection,character}(conn, x, ...)

\S4method{dbQuoteIdentifier}{MariaDBConnection,SQL}(conn, x, ...)

\S4method{dbQuoteIdentifier}{MariaDBConnection,Id}(conn, x, ...)

\S4method{dbUnquoteIdentifier}{MariaDBConnection,SQL}(conn, x, ...)

\S4method{dbQuoteString}{MariaDBConnection,character}(conn, x, ...)

\S4method{dbQuoteString}{MariaDBConnection,SQL}(conn, x, ...)
}
\description{
In MariaDB, identifiers are enclosed in backticks, e.g. \code{`x`}.
}
\examples{
if (mariadbHasDefault()) {
  con <- dbConnect(RMariaDB::MariaDB())
  dbQuoteIdentifier(con, c("a b", "a`b"))
  dbQuoteString(con, c("a b", "a'b"))
  dbDisconnect(con)
}
}
\keyword{internal}
