library(tibble)
# set caminho dos dados
pathData <- '/home/felipe/Área de Trabalho/Analise de Dados/Vinho/DadosASeremAnalisados/food-wine-quality/data'
setwd(pathData)

# -------------------------------------------------------------------------
#Ler dados de vinhos tintos
redWine <- data.frame(read.csv(file = 'winequality_red.csv'))

# -------------------------------------------------------------------------
#Alterar caminho para salvar as imagens geradas do gráfico
pathplot='/home/felipe/Área de Trabalho/Analise de Dados/Vinho/Gráficos/BoxPlot'
setwd(pathplot)

# Gerar Gráfico Bloxplot da Acidez Fixa
pathnameFile = 'BoxPlotAcidezFixa.jpeg'
jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  boxplot(redWine$fixed_acidity, main="BloxPlot da acidez fixa", xlab="Acidez Fixa", ylab="Valor")
dev.off()

# Gerar Gráfico Bloxplot da acidez volátil
pathnameFile = 'BoxPlotAcidezVolatil.jpeg'
jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  boxplot(redWine$volatile_acidity, main="BloxPlot da acidez volátil", xlab="acidez volátil", ylab="Valor")
dev.off()

# Gerar Gráfico Bloxplot da Ácido Cítrico
pathnameFile = 'BoxPlotAcidoCitrico.jpeg'
jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  boxplot(redWine$citric_acid, main="BloxPlot da Ácido Cítrico", xlab="Ácido Cítrico", ylab="Valor")
dev.off()

# Gerar Gráfico Bloxplot da açucar residual
pathnameFile = 'BoxPlotAcucarResidual.jpeg'
jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  boxplot(redWine$residual_sugar, main="BloxPlot da Áçucar Residual", xlab="Áçucar Residual", ylab="Valor")
dev.off()

# Gerar Gráfico Bloxplot de cloreto
pathnameFile = 'BoxPlotCloretos.jpeg'
jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  boxplot(redWine$chlorides, main="BloxPlot da Cloreto", xlab="cloreto", ylab="Valor")
dev.off()

# Gerar Gráfico Bloxplot de dióxido de enxofre livre
pathnameFile = 'BoxPlotDióxidoDeEnxofreLivre.jpeg'
jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  boxplot(redWine$free_sulfur_dioxide, main="BloxPlot do dióxido de enxofre livre", xlab="dióxido de enxofre livre", ylab="Valor")
dev.off()

# Gerar Gráfico Bloxplot dedióxido de enxofre total
pathnameFile = 'BoxPlotdióxidodeenxofretotal.jpeg'
jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  boxplot(redWine$total_sulfur_dioxide, main="BloxPlot do dióxido de enxofre total", xlab="dióxido de enxofre total", ylab="Valor")
dev.off()


# Gerar Gráfico Bloxplot de densidade
pathnameFile = 'BoxPlotDensidade.jpeg'
jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  boxplot(redWine$density, main="BloxPlot de densidade", xlab="densidade", ylab="Valor")
dev.off()

# Gerar Gráfico Bloxplot de ph
pathnameFile = 'BoxPlotPH.jpeg'
jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  boxplot(redWine$ph, main="BloxPlot de PH", xlab="PH", ylab="Valor")
dev.off()

# Gerar Gráfico Bloxplot de ph
pathnameFile = 'BoxPlotSulfato.jpeg'
jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  boxplot(redWine$sulphates, main="BloxPlot de sulfato", xlab="sulfato", ylab="Valor")
dev.off()

# Gerar Gráfico Bloxplot de álcool
pathnameFile = 'BoxPlotAlcool.jpeg'
jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  boxplot(redWine$alcohol, main="BloxPlot de álcool", xlab="Álcool", ylab="Valor")
dev.off()

# Gerar Gráfico Bloxplot de álcool
pathnameFile = 'BoxPlotAlcool.jpeg'
jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  boxplot(redWine$alcohol, main="BloxPlot de álcool", xlab="Álcool", ylab="Valor")
dev.off()

# Gerar Gráfico Bloxplot de Qualidade
pathnameFile = 'BoxPlotQualidade.jpeg'
jpeg(filename = pathnameFile, width = 800, height = 800, units = "px", pointsize = 12,
     quality = 75, bg = "white")
  boxplot(redWine$quality, main="BloxPlot de Qualidade", xlab="Qualidade", ylab="Valor")
dev.off()
