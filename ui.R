library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Best Hospital for an Outcome in a State"),
  
  sidebarPanel(
    selectInput("select1", "Choose State", selected = "AL",
                choices = list(
                  "AL" = "AL",
                  "AK" = "AK",
                  "AZ" = "AZ",
                  "AR" = "AR",
                  "CA" = "CA",
                  "CO" = "CO",
                  "CT" = "CT",
                  "DE" = "DE",
                  "DC" = "DC",
                  "FL" = "FL",
                  "GA" = "GA",
                  "GU" = "GU",
                  "HI" = "HI",
                  "ID" = "ID",
                  "IL" = "IL",
                  "IN" = "IN",
                  "IA" = "IA",
                  "KS" = "KS",
                  "KY" = "KY",
                  "LA" = "LA",
                  "ME" = "ME",
                  "MD" = "MD",
                  "MA" = "MA",
                  "MI" = "MI",
                  "MN" = "MN",
                  "MS" = "MS",
                  "MO" = "MO",
                  "MT" = "MT",
                  "NE" = "NE",
                  "NV" = "NV",
                  "NH" = "NH",
                  "NJ" = "NJ",
                  "NM" = "NM",
                  "NY" = "NY",
                  "NC" = "NC",
                  "ND" = "ND",
                  "OH" = "OH",
                  "OK" = "OK",
                  "OR" = "OR",
                  "PA" = "PA",
                  "PR" = "PR",
                  "RI" = "RI",
                  "SC" = "SC",
                  "SD" = "SD",
                  "TN" = "TN",
                  "TX" = "TX",
                  "UT" = "UT",
                  "VT" = "VT",
                  "VI" = "VI",
                  "VA" = "VA",
                  "WA" = "WA",
                  "WV" = "WV",
                  "WI" = "WI",
                  "WY" = "WY"                  
                )
    ),
    
    selectInput("select2", "Choose Outcome", selected = "heart attack",
                choices = list(
                  "Heart Attack" = "heart attack",
                  "Heart Failure" = "heart failure",
                  "Pneumonia" = "pneumonia"
                )
    ),
    
    submitButton("Go")
  ),
  
  mainPanel(    
    tabsetPanel(
      tabPanel("Best Hospital", verbatimTextOutput("outputText")), 
      tabPanel("Documentation", verbatimTextOutput("docText"))
    )
  )
  
))