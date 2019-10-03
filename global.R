library(shiny)
library(DT)
library(dplyr)
library(tidyr)
library(googlesheets)
library(ggplot2)
library(rpivotTable)
library(timevis)
library(janitor)
library(kableExtra)
library(knitr)
library(formattable)

Sys.setlocale("LC_ALL", "C")
sheet <- gs_title("pg85e")
dt<-gs_read(sheet, ws="pg85e" )
r<-gs_read(sheet, ws="r")


tab<-full_join(dt,r,by="MP")
names(tab)[7]<-"r"

tab<-tab %>%
  group_by(Anno, Operatore, MP, Nconf,r, esito1, esito2) %>% 
  summarise("ripetibilità"=abs(log10(esito1)-log10(esito2))) %>% 
  mutate("Giudizio"=ifelse(ripetibilità<=r, "Favorevole", "Sfavorevole"))
  








