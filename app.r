# sinlge-file app.r from https://mastering-shiny.org/basic-app.html
library(shiny)
ui <- fluidPage(
  "Hello, world!"
)
server <- function(input, output, session) {
}
shinyApp(ui, server)

#publish to shinyapps.io using https://shiny.rstudio.com/articles/shinyapps.html section: "Deploying a Shiny app"
library(rsconnect)
deployApp()
#publishing to shinyapps.io in RStudio easier, thanks to https://statsandr.com/blog/how-to-publish-shiny-app-example-with-shinyapps-io/
