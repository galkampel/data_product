
data("trees")

prediction <- function (x1){
    fit <- lm(Volume ~ Girth, data = trees)
    coef <- fit$coefficients
    x <- c(1,x1)
    predict <- coef %*% x
    
}
shinyServer(function(input,output){
        output$result <- renderText({
            input$submitButton
            isolate({
                result <- prediction(input$slide)
                    return(as.numeric(result))
                })
    })
    }
)



































