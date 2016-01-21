library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Predicting volume"),
    
    sidebarPanel(
        p("In this app I used the trees datasets to predict the vloume of a tree according to its girth."),
        p("In order to predict the volume you need to choose the desired girth of the tree (using the slider) and then press submit."),
        p("* since a volume of a tree cannot be negative, the range the girth was chosen accordingly."),
        sliderInput('slide','Girth',value = (8+30)/2,min=8,max = 30,step = 0.1),
        actionButton("submitButton", "submit")
    ),
    mainPanel(
        
        verbatimTextOutput("result")
    )
    ))