library(shiny)
shinyUI(fluidPage(
    titlePanel("Plot Random Numbers"),
    sidebarLayout(
        sidebarPanel(
            numericInput("numeric", "How Many Random Numbers Should be Plotted?",
                         value = 2000, min = 1, max = 2000, step = 2),
            sliderInput("sliderX", "Pick Minimum and Maximum X Values",
                        -200, 200, value = c(-50, 50)),
            sliderInput("sliderY", "Pick Minimum and Maximum Y Values",
                        -200, 200, value = c(-50, 50)),
            checkboxInput("show_xlab", "Show/Hide X Axis Label", value = FALSE),
            checkboxInput("show_ylab", "Show/Hide Y Axis Label", value = FALSE),
            checkboxInput("show_title", "Show/Hide Title",value = FALSE)
        ),
        mainPanel(
            h3("Graph of Random Points"),
            plotOutput("plot1")
        )
    )
))