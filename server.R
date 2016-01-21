
data("trees")

prediction <- function (x1,x2){
    fit <- lm(Volume ~ Girth+Height, data = trees)
    coef <- fit$coefficients
    x <- c(1,x1,x2)
    predict <- coef %*% x
    
}
shinyServer(function(input,output){
        output$result <- renderText({
            input$submitButton
            isolate({
                result <- prediction(input$slide,input$slide2)
                    return(as.numeric(result))
                })
    })
    }
)



































