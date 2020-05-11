library(shiny)

ui <- fluidPage(
  textInput("name", "Iinqiquez votre nom :"),
  textOutput("bienvenue"),
  actionButton("go", "essayer !")
)

server <- function(input, output) {
  output$bienvenue <- renderText({
  re <- eventReactive(
      input$go,{input$name})
    
      re()
  })
  
}
  
shinyApp(ui = ui, server = server)