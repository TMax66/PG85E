library(shiny)
library(DT)
library(dplyr)
library(tidyr)
library(googlesheets)
library(ggplot2)
library(janitor)
library(kableExtra)
library(knitr)
library(formattable)
library(readxl)

#

# sheet <- gs_title("pg85e")
# dt<-gs_read(sheet, ws="pg85e" )
# r<-gs_read(sheet, ws="r")


# dt <- as_tibble(read_excel("pg85e.xlsx"))
# 
# r <- as_tibble(read_excel("rip.xlsx"))


# tab<-full_join(dt,r,by="MP")
# names(tab)[7]<-"r"
# 
# tab<-tab %>%
#   group_by(Anno, Operatore, MP, Nconf,r, esito1, esito2) %>% 
#   summarise("ripetibilità"=abs(log10(esito1)-log10(esito2))) %>% 
#   mutate("Giudizio"=ifelse(ripetibilità<=r, "Favorevole", "Sfavorevole"))
# 
# 
# write.table(tab, file="dati.csv")  

tab<-read.csv("dati.csv", sep="")





