
server<-function(input, output, session) {


t<-reactive({tab %>%
    filter(Operatore==input$op) %>% 
    filter(Anno==input$anno) %>% 
    mutate(Giudizio = 
             ifelse(Giudizio=="Favorevole",     
             cell_spec(Giudizio, "html", color="lightgreen",bold=T),
             cell_spec(Giudizio, "html", color="red", bold=T)))
               
    })
  
 output$t1<-function(){
   
 knitr::kable(t()[, c(3:9)], escape = F)%>% 
        kable_styling("striped", full_width = T,fixed_thead = T)
   
 }
 
 
 gg<-reactive({tab %>%
     filter(Operatore==input$op) %>% 
     filter(MP==input$mp) %>% 
     group_by(MP)
 })
 
 output$gr<-renderPlot(
   gg() %>% 
   ggplot(aes(x=Anno, y=ripetibilità))+geom_point()+geom_line()
 )

}


