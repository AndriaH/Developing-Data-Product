shinyUI(fluidPage(
        titlePanel("USA Census App"),
        sidebarLayout(
                sidebarPanel(
                        h2("Overview"),
                        helpText("This shiny app creates demographic maps of the 2010 US Census."),
                        code('US Census Dataset:"counties.rds"'),
                        br(),
                        br(),
                        selectInput("var", 
                                    label = "Choose a variable to display",
                                    choices = c("Percent White", "Percent Black",
                                                "Percent Hispanic", "Percent Asian"),
                                    selected = "Percent White"),
                        sliderInput("range", 
                                    label = "Range of interest:",
                                    min = 5, max = 100, value = c(5, 100)),
                        br(),
                        br(),
                        img(src = "bigorb.png", height = 72, width = 72),
                        em("User-interface was made possible by:"), 
                        span("RStudio", style = "color:blue")),
                mainPanel(
                        h2("The US Census Features: "),
                        br(),
                        p("* The percent of residents in the county who are white, black, hispanic, or asian"),
                        p("* The name of each county in the United States"),
                        p("* The the total population of the county"),
                        plotOutput("map")))))