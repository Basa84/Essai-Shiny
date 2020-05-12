library(shiny)

ui <- fluidPage(
    titlePanel("Application de Perrine"),
    textInput("name", "Iinqiquez votre nom :"),
    textOutput("bienvenue"),
    actionButton("go", "visualisez!"),
    img(src="<Strava.png>")
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