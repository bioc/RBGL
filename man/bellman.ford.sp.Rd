\name{bellman.ford.sp}
\alias{bellman.ford.sp}
\title{ DAG shortest paths using boost C++ }
\description{
Algorithm for the single-source shortest paths problem for a graph with both positive and negative edge weights. 
}
\usage{
bellman.ford.sp(g,start=nodes(g)[1])
}
\arguments{
  \item{g}{ instance of class graph }
  \item{start}{ character: node name for start of path }
}
\details{
These functions are interfaces to the Boost graph library C++
routines for Bellman-Ford shortest paths.  If you only need to 
solve the shortest paths problem for positive edge weights, 
Dijkstra's algorithm provides a more efficient alternative. 
If all the edge weights are all equal to one then breadth-first 
search provides an even more efficient alternative.  If there 
is a negative cycle in the graph, then there will be edges in 
the graph that were not properly minimized. The algorithm loops 
over the edges in the graph one final time to check if all the 
edges were minimized, returning true if they were and returning 
false otherwise.
}

\value{
A list with elements:
\item{all edges minimized}{true if all edges are minimized, false otherwise. }
\item{distance}{The vector of distances from \code{start} to each node
of \code{g}; includes \code{Inf} when there is no path from \code{start}.}
\item{penult}{A vector of indices 
(in \code{nodes(g)}) of predecessors corresponding to each node
on the path from that node back to \code{start}}. For example, if the
element one of this vector has value \code{10}, that means that the
predecessor of node \code{1} is node \code{10}. The next predecessor is
found by examining \code{penult[10]}.
\item{start}{The start node that was supplied in the call to
\code{bellman.ford.sp}.}
}

\author{ Li Long <li.long@isb-sib.ch> }

\seealso{}

\examples{
dd <- fromGXL(file(system.file("XML/conn2.gxl",package="RBGL")))
bellman.ford.sp(dd)
bellman.ford.sp(dd,nodes(dd)[2])
}
\keyword{ graphs }