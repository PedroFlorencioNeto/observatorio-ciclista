library(shiny)
library(leaflet)

ui <- navbarPage("Instituto de Pesquisa e Planejamento de Fortaleza", id='nav',
             tabPanel('Mapa',
                      div(class='outer',
                          tags$head(
                            includeCSS("styles.css"),
                            includeScript("gomap.js")
                                    ),
                          leafletOutput("map", width="100%", height="100%")
                          )
                      )
                  )

server <- function(input, output, session) {
  output$map <- renderLeaflet(
    leaflet() %>% 
      addProviderTiles("CartoDB") %>% 
      setView(lng=-38.5279, lat=-3.7327, zoom=11)
  )
}

shinyApp(ui, server)