library(shiny)

ui <- fluidPage(
  titlePanel("Application de Perrine"),
  textInput("name", "Indiquez votre parcours sportif :"),
  textOutput("bienvenue"),
  actionButton("go", "visualisez!"),
  mainPanel(
    img(src="Strava.png", height = 300, width = 400)
  )
  
  
)


server <- function(input, output) {
  output$bienvenue <- renderText({
  re <- eventReactive(
      input$go,{input$name})
   
      re()
  })
  output$image <- renderPrint({
    dataset <- get(input$img, "Strava.png")
 
  })
  
}
  
shinyApp(ui = ui, server = server)

