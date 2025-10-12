library(snakecase)

ui_clean <- fluidPage(
  titlePanel("Data Cleaning Tool"),
  sidebarLayout(
    sidebarPanel(
      fileInput("file", "Upload CSV File"),
      textInput("delimiter", "Delimiter (optional)", value = ","),
      numericInput("skip", "Skip Rows", value = 0),
      numericInput("preview", "Rows to Preview", value = 5),
      checkboxInput("snake_case", "Rename columns to snake_case"),
      checkboxInput("remove_constant", "Remove constant columns"),
      checkboxInput("remove_na", "Remove rows with NA values"),
      downloadButton("download", "Download Cleaned CSV")
    ),
    mainPanel(
      h4("Raw Data Preview"),
      tableOutput("previewTable"),
      h4("Cleaned Data Preview"),
      tableOutput("cleanedTable")
    )
  )
)

server_clean <- function(input, output) {
  raw_data <- reactive({
    req(input$file)
    delim <- ifelse(input$delimiter == "", ",", input$delimiter)
    read.csv(input$file$datapath, sep = delim, skip = input$skip)
  })
  
  output$previewTable <- renderTable({
    head(raw_data(), input$preview)
  })
  
  clean_data <- reactive({
    df <- raw_data()
    if (input$snake_case) {
      names(df) <- to_snake_case(names(df))
    }
    if (input$remove_constant) {
      df <- df[sapply(df, function(col) length(unique(col)) > 1)]
    }
    if (input$remove_na) {
      df <- na.omit(df)
    }
    df
  })
  
  output$cleanedTable <- renderTable({
    head(clean_data(), input$preview)
  })
  
  output$download <- downloadHandler(
    filename = function() {"cleaned_dataset.csv"},
    content = function(file) {
      write.csv(clean_data(), file, row.names = FALSE)
    }
  )
}


shinyApp(ui = ui_clean, server = server_clean)
