<<<<<<< HEAD
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
  
=======
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
  
>>>>>>> f859a77003a15bcc29ee97e403f0380242d3dccb
shinyApp(ui = ui, server = server)