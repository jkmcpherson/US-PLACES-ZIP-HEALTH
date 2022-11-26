# sinlge-file app.r from https://mastering-shiny.org/basic-app.html
#shiny::runApp("app.r") to run the app
#rsconnect::deployApp() to deploy app in shinyapps.io

ui <- fluidPage(
  "Hello, world!"
)

server <- function(input, output, session) {
}

# Return a Shiny app object 
shinyApp(ui = ui, server = server)