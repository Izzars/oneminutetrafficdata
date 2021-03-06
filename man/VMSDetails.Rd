% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/secondaryscripts.R
\name{VMSDetails}
\alias{VMSDetails}
\title{Add Variable Message Signs (VMS) Details with Traffic Count Data}
\usage{
VMSDetails(data, directory)
}
\arguments{
\item{data}{The data that the user wishes to investigate.}

\item{directory}{A string (without a "/" or "\\" character on the start or end of
the string) which points to the directory (from the current working directory) that
the user's alert log files are stored. These files must be stored within this directory only and cannot be in
any subfolders of this directory. Their names must also follow the "XXDDMMYY.mal" or "XXDDMMYY.mal.bz2" format
as downloaded from the MIDAS website, where "XX" denotes the control office, "DD"
denotes the day, "MM" denotes the month, and "YY" denotes the year. It is not necessary
to have all of these files, as the function will only scrape data out of what is provided.}
}
\value{
A version of the format of \code{data}, with \eqn{n+1} additional columns (where \eqn{n} is the
number of lanes). These additional columns correspond to the traffic signs above each lane, with the \eqn{n+1}
column denoting the verbal messages displayed to the road users. In instances where there are no traffic signs,
"N/A" is used instead.
}
\description{
Motorway Incident Detection and Automatic Signalling (MIDAS) is a
sensor based network along UK motorways, and is designed to collect data regarding
traffic flows, average speeds and road occupancy, amongst other features, on the
road network. This data can be accessed via the MIDAS website
\url{https://www.midas-data.org.uk/} (login required) in the form of .tcd.bz2 files.

The function \code{VMS} allows the user to view VMS details for every minute that the kit
is turned on, as found in the corresponding
alert logs, including the messages displayed on electronic traffic signs over each lane and
on the display signs on the side of roads.
}
\examples{
M25DataRushHour <- VMSDetails(M25Data, "logs/alertLogs")

}
\author{
RAC Foundation, Luke Hudlass-Galley
}
