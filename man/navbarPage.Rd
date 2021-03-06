% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bootstrap.R
\name{navbarPage}
\alias{navbarPage}
\alias{navbarMenu}
\title{Create a page with a top level navigation bar}
\usage{
navbarPage(title, ..., id = NULL, selected = NULL,
  position = c("static-top", "fixed-top", "fixed-bottom"), header = NULL,
  footer = NULL, inverse = FALSE, collapsible = FALSE, collapsable,
  fluid = TRUE, responsive = NULL, theme = NULL, windowTitle = title)

navbarMenu(title, ..., menuName = title, icon = NULL)
}
\arguments{
\item{title}{The title to display in the navbar}

\item{...}{\code{\link{tabPanel}} elements to include in the page. The
\code{navbarMenu} function also accepts strings, which will be used as menu
section headers. If the string is a set of dashes like \code{"----"} a
horizontal separator will be displayed in the menu.}

\item{id}{If provided, you can use \code{input$}\emph{\code{id}} in your
server logic to determine which of the current tabs is active. The value
will correspond to the \code{value} argument that is passed to
\code{\link{tabPanel}}.}

\item{selected}{The \code{value} (or, if none was supplied, the \code{title})
of the tab that should be selected by default. If \code{NULL}, the first
tab will be selected.}

\item{position}{Determines whether the navbar should be displayed at the top
of the page with normal scrolling behavior (\code{"static-top"}), pinned at
the top (\code{"fixed-top"}), or pinned at the bottom
(\code{"fixed-bottom"}). Note that using \code{"fixed-top"} or
\code{"fixed-bottom"} will cause the navbar to overlay your body content,
unless you add padding, e.g.: \code{tags$style(type="text/css", "body
{padding-top: 70px;}")}}

\item{header}{Tag or list of tags to display as a common header above all
tabPanels.}

\item{footer}{Tag or list of tags to display as a common footer below all
tabPanels}

\item{inverse}{\code{TRUE} to use a dark background and light text for the
navigation bar}

\item{collapsible}{\code{TRUE} to automatically collapse the navigation
elements into a menu when the width of the browser is less than 940 pixels
(useful for viewing on smaller touchscreen device)}

\item{collapsable}{Deprecated; use \code{collapsible} instead.}

\item{fluid}{\code{TRUE} to use a fluid layout. \code{FALSE} to use a fixed
layout.}

\item{responsive}{This option is deprecated; it is no longer optional with
Bootstrap 3.}

\item{theme}{Alternative Bootstrap stylesheet (normally a css file within the
www directory). For example, to use the theme located at
\code{www/bootstrap.css} you would use \code{theme = "bootstrap.css"}.}

\item{windowTitle}{The title that should be displayed by the browser window.
Useful if \code{title} is not a string.}

\item{menuName}{A name that identifies this \code{navbarMenu}. This
is needed if you want to insert/remove or show/hide an entire
\code{navbarMenu}.}

\item{icon}{Optional icon to appear on a \code{navbarMenu} tab.}
}
\value{
A UI defintion that can be passed to the \link{shinyUI} function.
}
\description{
Create a page that contains a top level navigation bar that can be used to
toggle a set of \code{\link{tabPanel}} elements.
}
\details{
The \code{navbarMenu} function can be used to create an embedded
  menu within the navbar that in turns includes additional tabPanels (see
  example below).
}
\examples{
navbarPage("App Title",
  tabPanel("Plot"),
  tabPanel("Summary"),
  tabPanel("Table")
)

navbarPage("App Title",
  tabPanel("Plot"),
  navbarMenu("More",
    tabPanel("Summary"),
    "----",
    "Section header",
    tabPanel("Table")
  )
)
}
\seealso{
\code{\link{tabPanel}}, \code{\link{tabsetPanel}},
  \code{\link{updateNavbarPage}}, \code{\link{insertTab}},
  \code{\link{showTab}}
}
