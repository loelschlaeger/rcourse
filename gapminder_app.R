library(shiny)
library(ggplot2)
library(dplyr)
library(gapminder)

# Define the UI
ui <- fluidPage(
  sliderInput("year", "Year", value = 1972, min = 1952, max = 2007, step = 5, sep=""),
  plotOutput('plot')
)


# Define the server code
server <- function(input, output) {
  data <- reactive(filter(gapminder, year == input$year))
  output$plot <- renderPlot({
    ggplot(data(), aes(x = gdpPercap, y=lifeExp, size = pop, colour = continent)) +
      geom_point(alpha = 0.7) +
      scale_x_log10(labels = scales::dollar) +
      coord_cartesian(xlim = c(min(gapminder$gdpPercap),max(gapminder$gdpPercap)),
                      ylim = c(min(gapminder$lifeExp),max(gapminder$lifeExp)))+
      guides(size="none") +
      guides(colour=guide_legend(title="")) +
      labs(x = "GDP per capita", y = "Life expectancy in years",
           title = "Economic growth as an indicator for life expectancy",
           caption = "Source: Gapminder")
  })
}

# Return a Shiny app object
shinyApp(ui = ui, server = server)

