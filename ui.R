
ui <- fluidPage(
  titlePanel("Microbiologia Alimenti: PG00/085E"),
  
  sidebarLayout(
    sidebarPanel(
    
      selectInput("op", 
                  label = "Operatore", 
                  choices=c(unique(as.character(tab$Operatore))), 
                  selected = "Marchioni"),
      
      selectInput("anno", 
                  label = "Anno",
                  choices =  c(unique(as.character(tab$Anno))),
                  selected = "2018"), 
      hr(),
      br(),
      tags$b("Performances dell'operatore nel tempo"),
      selectInput("mp",
                  label="MP", 
                  choices=c(unique(as.character(tab$MP))),
                  selected = "01/112"),
      
      plotOutput("gr")
      
    ),
    
    mainPanel("",
              fluidRow(
                
                tableOutput("t1")
                
                
              )
              
              
    ))
  
  
  
  
)