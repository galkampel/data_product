library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Predicting volume of a tree"),
    
    sidebarPanel(
        p("In this app I used the trees datasets to predict the vloume of a tree according to its girth and height."),
        p("In order to predict the volume you need to choose the desired girth and height of the tree (using the slider) and then press submit."),
        p("* the ranges were chosen such that the volume will not have negative values"),
        sliderInput('slide','Girth',value = (8+30)/2,min=8,max = 30,step = 0.1),
        sliderInput('slide2','Height',value = (60+90)/2,min=60,max = 90,step = 0.1),
        actionButton("submitButton", "submit")
    ),
    mainPanel(
        
        verbatimTextOutput("result")
    )
    ))