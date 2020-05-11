library(shiny)

ui <- fluidPage(
  textInput("name", "Indiquez votre nom :"),
  textOutput("bienvenue"),
  actionButton("action", label = "Action"),
  
  hr(),
  fluidRow(column(2, verbatimTextOutput("value"))),

  checkboxGroupInput("checkGroup", label=h3("Checkbox group"),
    choices = list("Choice 1"=  1, "Choice 2" =  2, "Choice 3"= 3),
    selected =  1),

  hr(),
  fluidRow(column(3, verbatimTextOutput("value")))
)

server <- function(input, output) {
  output$velue <- renderPrint({input$action})

  
}
  
shinyApp(ui = ui, server = server)