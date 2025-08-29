library(dplyr)
library(ggplot2)
library(readr)
library(lubridate)

dados <- read.csv("~/Documents/CURSO_R/archive (1)/inpe_brazilian_amazon_fires_1999_2019.csv")

head(dados)
str(dados)

# Verificar valores ausentes
sum(is.na(dados))

# Remover linhas com valores ausentes
dados <- na.omit(dados)

degradacao_estado <- dados %>%
  group_by(state) %>%
  summarise(Total_Degradacao = sum(firespots)) %>%
  arrange(desc(Total_Degradacao))

ggplot(dados, aes(x = state, y = firespots, fill = as.factor(year))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Degradação da Amazônia por Estado e Ano",
       x = "Estado", y = "Área Degradada (km²)", fill = "Ano") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))



