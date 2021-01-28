# set caminho dos dados
pathData <- '/home/felipe/Documentos/Analise de Dados/DCWine/DadosASeremAnalisados/food-wine-quality/data/'
setwd(pathData)

#Ler dados de vinhos tintos
redWine <- data.frame(read.csv(file = 'winequality_red.csv'))

# Calcula correlação
corRedWine <- data.frame(cor(redWine,use = "everything",
                             method = c("pearson", "kendall", "spearman")))

# Grava dados no arquivo csv.
pathDataSaved = '/home/felipe/Documentos/Analise de Dados/DCWine/DadosGerados'
setwd(pathDataSaved)
fileName='CorrelacaoRedWine.csv'
write.csv(x=corRedWine, file=fileName)

#------------------------------------------------------------------------------------------
# Gŕafico de Dispersão

# Set caminho dos gráficos
pathGraficos = '/home/felipe/Documentos/Analise de Dados/DCWine/Gráficos/Dispersão'
setwd(pathGraficos)

# Gerar e salver gráfico
namePlot = 'Grafico_1.jpeg'

jpeg(filename = namePlot, width = 480, height = 480, units = "px", pointsize = 12,
     quality = 75, bg = "white")
    plot(corRedWine$fixed_acidity, corRedWine$quality)
dev.off()

namePlot = 'Grafico_2.jpeg'

jpeg(filename = namePlot, width = 480, height = 480, units = "px", pointsize = 12,
     quality = 75, bg = "white")
    plot(corRedWine$volatile_acidity, corRedWine$quality)
dev.off()

namePlot = 'Grafico_3.jpeg'

jpeg(filename = namePlot, width = 480, height = 480, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  plot(corRedWine$citric_acid, corRedWine$quality)
dev.off()

namePlot = 'Grafico_4.jpeg'

jpeg(filename = namePlot, width = 480, height = 480, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  plot(corRedWine$residual_sugar, corRedWine$quality)
dev.off()

namePlot = 'Grafico_5.jpeg'

jpeg(filename = namePlot, width = 480, height = 480, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  plot(corRedWine$chlorides, corRedWine$quality)
dev.off()

namePlot = 'Grafico_6.jpeg'

jpeg(filename = namePlot, width = 480, height = 480, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  plot(corRedWine$free_sulfur_dioxide, corRedWine$quality)
dev.off()

namePlot = 'Grafico_7.jpeg'

jpeg(filename = namePlot, width = 480, height = 480, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  plot(corRedWine$total_sulfur_dioxide, corRedWine$quality)
dev.off()

namePlot = 'Grafico_8.jpeg'

jpeg(filename = namePlot, width = 480, height = 480, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  plot(corRedWine$density, corRedWine$quality)
dev.off()

namePlot = 'Grafico_9.jpeg'

jpeg(filename = namePlot, width = 480, height = 480, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  plot(corRedWine$ph, corRedWine$quality)
dev.off()

namePlot = 'Grafico_10.jpeg'

jpeg(filename = namePlot, width = 480, height = 480, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  plot(corRedWine$sulphates, corRedWine$quality)
dev.off()

namePlot = 'Grafico_11.jpeg'

jpeg(filename = namePlot, width = 480, height = 480, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  plot(corRedWine$alcohol, corRedWine$quality)
dev.off()

