# sinlge-file app.r from https://mastering-shiny.org/basic-app.html
#shiny::runApp("app.r") to run the app
#rsconnect::deployApp() to deploy app in shinyapps.io
library(tidyverse)

# the 2022 CDC PLACES data is available at https://www.cdc.gov/places/about/data.html 
df <- read.csv("https://chronicdata.cdc.gov/api/views/swc5-untb/rows.csv?accessType=DOWNLOAD&api_foundry=true")
df <- df % relocate(LocationID) %>% rename()


# df$LocationID = zip-code
# df$LocationDesc = city
# df$LocationName = county
# df$StateAbbr = state
# df$StateDesc = state



# very nice zip-code tabular area (ZCTA) visualization from https://arilamstein.com/creating-zip-code-choropleths-choroplethrzip/
# will use this to one day make a map of antibiotic resistance by zip-code
library(choroplethr)
library(choroplethrZip)




ui <- fluidPage(
  "Hello, world!"
)

server <- function(input, output, session) {
}

# Return a Shiny app object 
shinyApp(ui = ui, server = server)