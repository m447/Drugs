library(shiny)

fluidPage(
        titlePanel("Drug Use/Frequency by Age Group"),
        sidebarLayout(
                sidebarPanel(
                        h6("Use - percentage of those in an age group who used the drug in the past 12 months"),
                        h6("Frequency - median number of times a user in an age group used drug in the past 12 months"),
                        
                        selectInput("drug", "Choose a Drug Type and Parameter", 
                                    choices = drugs)
                ),
                mainPanel(
                        plotOutput("bar_plot")
                )
        )
)