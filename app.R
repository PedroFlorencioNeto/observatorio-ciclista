install.packages("shiny")
library(shiny)

ui <- fluidPage(
  "Hello, World!"
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)