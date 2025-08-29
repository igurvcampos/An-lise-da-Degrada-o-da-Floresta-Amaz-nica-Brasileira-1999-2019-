# An-lise-da-Degrada-o-da-Floresta-Amaz-nica-Brasileira-1999-2019-

# Análise da Degradação da Floresta Amazônica Brasileira (1999-2019)

## Objetivo
Este projeto tem como objetivo analisar a **degradação da Floresta Amazônica brasileira** ao longo do período de 1999 a 2019, utilizando dados de **focos de incêndio (firespots)** por estado. A análise permite identificar padrões, estados mais impactados e tendências temporais da degradação.

---

## Descrição dos Dados
- **Fonte**: INPE (Instituto Nacional de Pesquisas Espaciais)  
- **Arquivo utilizado**: `inpe_brazilian_amazon_fires_1999_2019.csv`  
- **Colunas principais**:
  - `year`: Ano da observação
  - `state`: Estado da Amazônia brasileira
  - `firespots`: Número de focos de incêndio registrados (representando km² de área degradada)
- **Período**: 1999 a 2019

---

## Etapas do Projeto

1. **Importação e exploração dos dados**
   - Carregamento do CSV no R com `read.csv()`  
   - Visualização inicial com `head()` e `str()` para entender a estrutura

2. **Limpeza de dados**
   - Verificação de valores ausentes com `sum(is.na(dados))`  
   - Remoção de linhas com valores faltantes usando `na.omit(dados)`

3. **Agregação e análise por estado**
   - Soma total de degradação (`firespots`) por estado com `group_by()` e `summarise()`  
   - Ordenação dos estados por degradação total usando `arrange(desc(...))`

4. **Visualização**
   - Gráfico de barras mostrando **degradação por estado e ano** (`ggplot2`)  
   - Cada barra representa a degradação em km² de um estado em um ano específico  
   - As cores representam diferentes anos (`fill = as.factor(year)`)  
   - Ajuste da visualização para melhor leitura com rótulos inclinados (`theme(axis.text.x = element_text(angle = 45, hjust = 1))`)

---

## Resultados e Insights
- Estados como **[exemplo: Pará, Mato Grosso]** apresentam maior área degradada ao longo do período.  
- É possível observar **tendências de aumento ou diminuição da degradação** em certos anos.  
- O projeto permite comparar estados e identificar regiões que necessitam de **maior atenção ambiental**.

---

## Tecnologias e Pacotes Utilizados
- **R**: Linguagem de programação para análise de dados  
- **Pacotes**:
  - `dplyr`: Manipulação e agregação de dados  
  - `ggplot2`: Visualização gráfica  
  - `readr`: Importação de dados  
  - `lubridate`: Manipulação de datas (opcional para análises temporais mais avançadas)

---

## Como Executar
1. Baixe o arquivo CSV do dataset.  
2. Abra o RStudio e carregue o script `.R` do projeto.  
3. Execute as linhas do código para gerar as análises e gráficos.  
4. Analise os gráficos para observar degradação por estado e por ano.

---

## Conclusão
Este projeto fornece uma visão detalhada da degradação da Amazônia ao longo de 20 anos, permitindo **visualizar padrões temporais e regionais**, e serve como base para **decisões de políticas públicas e estudos ambientais**.
