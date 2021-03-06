% Generated by roxygen2 (4.0.1): do not edit by hand
\name{splitLayout}
\alias{splitLayout}
\title{Split layout}
\usage{
splitLayout(..., cellWidths = NULL, cellArgs = list())
}
\arguments{
\item{...}{Unnamed arguments will become child elements of the layout. Named
arguments will become HTML attributes on the outermost tag.}

\item{cellWidths}{Character or numeric vector indicating the widths of the
individual cells. Recycling will be used if needed. Character values will
be interpreted as CSS lengths (see \code{\link{validateCssUnit}}), numeric
values as pixels.}

\item{cellArgs}{Any additional attributes that should be used for each cell
  of the layout.

#'}
}
\description{
Lays out elements horizontally, dividing the available horizontal space into
equal parts (by default).
}
\examples{
# Equal sizing
splitLayout(
  plotOutput("plot1"),
  plotOutput("plot2")
)

# Custom widths
splitLayout(cellWidths = c("25\%", "75\%"),
  plotOutput("plot1"),
  plotOutput("plot2")
)

# All cells at 300 pixels wide, with cell padding
# and a border around everything
splitLayout(
  style = "border: 1px solid silver;",
  cellWidths = 300,
  cellArgs = list(style = "padding: 6px"),
  plotOutput("plot1"),
  plotOutput("plot2"),
  plotOutput("plot3")
)
}

