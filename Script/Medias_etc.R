library(tibble)
# set caminho dos dados
pathData <- '/home/felipe/Documentos/Analise de Dados/Vinho/DadosASeremAnalisados/food-wine-quality/data/'
setwd(pathData)

# -------------------------------------------------------------------------
#Ler dados de vinhos tintos
redWine <- data.frame(read.csv(file = 'winequality_red.csv'))

df_estatistica <- tibble(Nome="acidez fixa", Media=mean(redWine$fixed_acidity), Mediana=median(redWine$fixed_acidity),desvioPadrao=sd(redWine$fixed_acidity),varianca=var(redWine$fixed_acidity), Maior=max(redWine$fixed_acidity), Menor=min(redWine$fixed_acidity))
df_estatistica <- add_row(df_estatistica, Nome="acidez volátil", Media=mean(redWine$volatile_acidity), Mediana=median(redWine$volatile_acidity),desvioPadrao=sd(redWine$volatile_acidity),varianca=var(redWine$volatile_acidity), Maior=max(redWine$volatile_acidity), Menor=min(redWine$volatile_acidity))
df_estatistica <- add_row(df_estatistica, Nome="Ácido Cítrico", Media=mean(redWine$citric_acid), Mediana=median(redWine$citric_acid),desvioPadrao=sd(redWine$citric_acid),varianca=var(redWine$citric_acid), Maior=max(redWine$citric_acid), Menor=min(redWine$citric_acid))
df_estatistica <- add_row(df_estatistica, Nome="Açucar residual", Media=mean(redWine$residual_sugar), Mediana=median(redWine$residual_sugar),desvioPadrao=sd(redWine$residual_sugar),varianca=var(redWine$residual_sugar), Maior=max(redWine$residual_sugar), Menor=min(redWine$residual_sugar))
df_estatistica <- add_row(df_estatistica, Nome="cloretos", Media=mean(redWine$chlorides), Mediana=median(redWine$chlorides),desvioPadrao=sd(redWine$chlorides),varianca=var(redWine$chlorides), Maior=max(redWine$chlorides), Menor=min(redWine$chlorides))
df_estatistica <- add_row(df_estatistica, Nome="dióxido de enxofre livre", Media=mean(redWine$free_sulfur_dioxide), Mediana=median(redWine$free_sulfur_dioxide),desvioPadrao=sd(redWine$free_sulfur_dioxide),varianca=var(redWine$free_sulfur_dioxide), Maior=max(redWine$free_sulfur_dioxide), Menor=min(redWine$free_sulfur_dioxide))
df_estatistica <- add_row(df_estatistica, Nome="dióxido de enxofre total", Media=mean(redWine$total_sulfur_dioxide), Mediana=median(redWine$total_sulfur_dioxide),desvioPadrao=sd(redWine$total_sulfur_dioxide),varianca=var(redWine$total_sulfur_dioxide), Maior=max(redWine$total_sulfur_dioxide), Menor=min(redWine$total_sulfur_dioxide))
df_estatistica <- add_row(df_estatistica, Nome="Densidade", Media=mean(redWine$density), Mediana=median(redWine$density),desvioPadrao=sd(redWine$density),varianca=var(redWine$density), Maior=max(redWine$density), Menor=min(redWine$density))
df_estatistica <- add_row(df_estatistica, Nome="PH", Media=mean(redWine$ph), Mediana=median(redWine$ph),desvioPadrao=sd(redWine$ph),varianca=var(redWine$ph), Maior=max(redWine$ph), Menor=min(redWine$ph))
df_estatistica <- add_row(df_estatistica, Nome="Sulfato", Media=mean(redWine$sulphates), Mediana=median(redWine$sulphates),desvioPadrao=sd(redWine$sulphates),varianca=var(redWine$sulphates), Maior=max(redWine$sulphates), Menor=min(redWine$sulphates))
df_estatistica <- add_row(df_estatistica, Nome="álcool", Media=mean(redWine$alcohol), Mediana=median(redWine$alcohol),desvioPadrao=sd(redWine$alcohol),varianca=var(redWine$alcohol), Maior=max(redWine$alcohol), Menor=min(redWine$alcohol))
df_estatistica <- add_row(df_estatistica, Nome="Quaidade", Media=mean(redWine$quality), Mediana=median(redWine$quality),desvioPadrao=sd(redWine$quality),varianca=var(redWine$alcohol), Maior=max(redWine$alcohol), Menor=min(redWine$alcohol))
df_estatistica

corDegrade <- colorRampPalette(c("red","yellow")) # Degradê de vermelho para amarelo

caracteristica_vinho=as.matrix(df_estatistica[1])

pathplot='/home/felipe/Documentos/Analise de Dados/Vinho/Gráficos/Estatistica'
setwd(pathplot)

pathnameFile = 'MediaCaracteristicas.jpeg'

# Gráfico da Média das caracteristicas
jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  barplot(t(as.matrix(df_estatistica[2])),beside=TRUE,
          xlab = "Caracteristica do vinho",
          ylab = "Média Aritmética",
          ylim = c(0, 60),
          legend = caracteristica_vinho,
          args.legend = list(x = "topleft", 
                             ncol=3),
          col = corDegrade(12),
          main = "Média das caracteristicas")
dev.off()

# Gráfico da Mediana das caracteristicas
pathnameFile = 'MedianaCaracteristicas.jpeg'

jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
barplot(t(as.matrix(df_estatistica[3])),beside=TRUE,
        xlab = "Caracteristica do vinho",
        ylab = "Médiana",
        ylim = c(0, 60),
        legend = caracteristica_vinho,
        args.legend = list(x = "topleft", 
                           ncol=3),
        col = corDegrade(12),
        main = "Mediana das caracteristicas")
dev.off()

# Gráfico da Desvio Padrão das caracteristicas
pathnameFile = 'DesvioPadraoCaracteristicas.jpeg'

jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
barplot(t(as.matrix(df_estatistica[4])),beside=TRUE,
        xlab = "Caracteristica do vinho",
        ylab = "Desvio Padrão",
        ylim = c(0, 60),
        legend = caracteristica_vinho,
        args.legend = list(x = "topleft", 
                           ncol=3),
        col = corDegrade(12),
        main = "Desvio Padrão das caracteristicas")
dev.off()

# Gráfico da Variância das caracteristicas
pathnameFile = 'VarianciaCaracteristicas.jpeg'

jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
barplot(t(as.matrix(df_estatistica[5])),beside=TRUE,
        xlab = "Caracteristica do vinho",
        ylab = "Variância",
        ylim = c(0, 1300),
        legend = caracteristica_vinho,
        args.legend = list(x = "topleft", 
                           ncol=3),
        col = corDegrade(12),
        main = "Variância das caracteristicas")
dev.off()

# Gráfico do valor máximo das caracteristicas
pathnameFile = 'MaiorValorCaracteristicas.jpeg'

jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
barplot(t(as.matrix(df_estatistica[6])),beside=TRUE,
        xlab = "Caracteristica do vinho",
        ylab = "Valor Máximo",
        ylim = c(0, 400),
        legend = caracteristica_vinho,
        args.legend = list(x = "topleft", 
                           ncol=3),
        col = corDegrade(12),
        main = "Valor Máximo das caracteristicas")
dev.off()

# Gráfico do valor minimo das caracteristicas
pathnameFile = 'MenorValorCaracteristicas.jpeg'

jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
barplot(t(as.matrix(df_estatistica[7])),beside=TRUE,
        xlab = "Caracteristica do vinho",
        ylab = "Valor Minimo",
        ylim = c(0, 15),
        legend = caracteristica_vinho,
        args.legend = list(x = "topleft", 
                           ncol=3),
        col = corDegrade(12),
        main = "Valor Minimo das caracteristicas")
dev.off()