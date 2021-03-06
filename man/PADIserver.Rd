\name{PADIserver}
\alias{PADIserver}
\alias{PADIserverProcess}
\alias{PADIcleanupScript}
\alias{startPADIserver}
\alias{cleanupPADIserver}
\alias{killPADIserver}

\title{PADI Functions}
\description{see details}
\usage{
  PADIserver()
  PADIserverProcess()
  PADIcleanupScript()
  startPADIserver(server=PADIserver(), 
      server.process=PADIserverProcess(), dbname=NULL) 
  cleanupPADIserver(process, cleanup.script=PADIcleanupScript())
  killPADIserver(kill.script="killserver",
      server.process=PADIserverProcess())
}
\arguments{
    \item{server}{string or vector of strings indicating the server where
       the series will be found. Scalar values are expanded to a 
       vector of appropriate length.}
    \item{dbname}{string or vector of strings indicating additional information for 
       the server. Scalar values are expanded to a vector of appropriate length.}
    \item{server.process}{string indicating the name of the process to be 
       used to start a server process.}
    \item{cleanup.script}{string indicating the name of the process to be 
       used to shut down a server process.}
    \item{process}{argument to cleanup.script, not actually the process ID.}
    \item{kill.script}{string indicating the name of the process to be 
       used to kill a server process.}
}
\value{depends}
\details{
 The function PADIserver returns the name of the default server. This may be set
 by specifying options(PADIserver="whatever"), or if not specified it will be
 set to nodename.
 The function startPADIserver uses a script to start a server.
 The function  cleanupPADIserver uses the information returned by 
     startPADIserver to terminate the server.
 The function  killPADIserver looks for a server and kills it.
 The default scripts for starting and stopping the server are determined by
the functions PADIserverProcess and PADIcleanupScript, which use the
Unix environment variables \code{PADI}, \code{PADI_STARTUP} 
and \code{PADI_CLEANUP}.
 Scripts for starting and stopping the server are only relevant in cases
     when it is necessary to start or stop a server.

}
\seealso{
   \code{\link{getpadi}}
   \code{\link{putpadi}}
}
\keyword{ts}
