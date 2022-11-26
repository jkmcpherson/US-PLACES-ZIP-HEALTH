# sinlge-file app.r from https://mastering-shiny.org/basic-app.html
library(shiny)


ui <- fluidPage(
  "Hello, world!"
)


server <- function(input, output, session) {
}

# Return a Shiny app object 
shinyApp(ui = ui, server = server)