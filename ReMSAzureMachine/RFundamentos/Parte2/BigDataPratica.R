setwd("/home/hebert/Documentos/DataScience/ReMSAzureMachine/RFundamentos/Patre2")
getwd()

install.packages('readr')
install.packages('data.table')
library(readr)  
library(dplyr)
library(ggplot2)  
library(scales)
library(data.table)  


#carregando os dados de formas diferendetes 

#system.time(df_teste <- read.csv2("TemperaturasGlobais.csv"))

#system.time(df_read <- read.table("TemperaturasGlobais.csv"))

system.time(df_fread <-fread("TemperaturasGlobais.csv"))


head(df_fread)
cidadesBrasil = subset(df_fread,Country =='Brazil')
cidadesBrasil = na.omit(cidadesBrasil)
head(cidadesBrasil)
nrow(cidadesBrasil)
nrow(df_fread)
dim(df_fread)

#convertendo datas
cidadesBrasil$dt = as.POSIXct(cidadesBrasil$dt,format='%Y-%m-%d')
cidadesBrasil$Month = month(cidadesBrasil$dt)
cidadesBrasil$year = year(cidadesBrasil$dt)

palmas = subset(cidadesBrasil, City=='Palmas')
palmas = subset(palmas, year %in% c(1976,1846,1896,1946,1996,2012))
head(palmas)

cur = subset(cidadesBrasil, City=='Curitiba')
cur = subset(cur, year %in% c(1976,1846,1896,1946,1996,2012))
head(cur)

rec = subset(cidadesBrasil, City=='Recife')
rec = subset(rec, year %in% c(1976,1846,1896,1946,1996,2012))
head(rec)

# Construindo os Plots
p_plm <- ggplot(palmas, aes(x = (Month), y = AverageTemperature, color = as.factor(year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Mês")+
  ylab("Temperatura Média") +
  scale_color_discrete("") +
  ggtitle("Temperatura Média ao longo dos anos em Palmas") +
  theme(plot.title = element_text(size = 18))

p_crt <- ggplot(cur, aes(x = (Month), y = AverageTemperature, color = as.factor(year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Mês")+
  ylab("Temperatura") +
  scale_color_discrete("") +
  ggtitle("Temperatura Média ao longo dos anos em Curitiba") +
  theme(plot.title = element_text(size = 18))

p_recf <- ggplot(rec, aes(x = (Month), y = AverageTemperature, color = as.factor(year))) +
  geom_smooth(se = FALSE,fill = NA, size = 2) +
  theme_light(base_size = 20) +
  xlab("Mês")+
  ylab("Temperatura Média") +
  scale_color_discrete("") +
  ggtitle("Temperatura Média ao longo dos anos em Recife") +
  theme(plot.title = element_text(size = 18))

p_plm
p_crt
p_recf

?aes
