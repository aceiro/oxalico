# ggplot
# oxalico.plot.shape
# PCA
# REF: https://cran.r-project.org/web/packages/ggfortify/vignettes/plot_pca.html


library(ggplot2)
library(ggfortify)

setwd("/home/erik/Workspace/git/oxalico/data")

################################################################################
#
#                             pca.oxalico 
#                              sensivel
################################################################################
oxalico.data.txt       <- "Oxalico_sensivel.txt"
oxalico.axis.x         <- "mssensivel.oxalico"
oxalico.axis.y         <- "mlsensivel.oxalico"
oxalico.cluster        <- "al"
oxalico.cluster.colour <- "al"
oxalico.data           <- read.csv(oxalico.data.txt, sep="\t")

df.oxalico  <- oxalico.data[c( 2 , 3)]
pca.oxalico <- prcomp(df.oxalico)
df.oxalico.autoplot <- autoplot(pca.oxalico, 
                       data = oxalico.data, 
                       colour = 'Concentração_Al', 
                       loadings = TRUE, loadings.label = TRUE)

df.oxalico.autoplot + labs(title="Ácido Oxálico - Sensível") + theme(plot.title = element_text(hjust = 0.5))

df.oxalico.autoplot.frame <- autoplot(pca.oxalico, 
                                        data = oxalico.data, 
                                        colour = 'Concentração_Al', 
                                        frame = TRUE, frame.type = 'norm')

df.oxalico.autoplot.frame + labs(title="Ácido Oxálico - Sensível") + theme(plot.title = element_text(hjust = 0.5))


################################################################################
#
#                             pca.oxalico 
#                              tolerante
################################################################################
oxalico.data.txt       <- "Oxalico_tolerante.txt"
oxalico.axis.x         <- "mstolerante.oxalico"
oxalico.axis.y         <- "mltolerante.oxalico"
oxalico.cluster        <- "al"
oxalico.cluster.colour <- "al"
oxalico.data           <- read.csv(oxalico.data.txt, sep="\t")

df.oxalico  <- oxalico.data[c( 2 , 3)]
pca.oxalico <- prcomp(df.oxalico)
df.oxalico.autoplot <- autoplot(pca.oxalico, 
                                data = oxalico.data, 
                                colour = 'Concentração_Al', 
                                loadings = TRUE, loadings.label = TRUE)

df.oxalico.autoplot + labs(title="Ácido Oxálico - Tolerante") + theme(plot.title = element_text(hjust = 0.5))

df.oxalico.autoplot.frame <- autoplot(pca.oxalico, 
                                      data = oxalico.data, 
                                      colour = 'Concentração_Al', 
                                      frame = TRUE, frame.type = 'norm')

df.oxalico.autoplot.frame + labs(title="Ácido Oxálico - Tolerante") + theme(plot.title = element_text(hjust = 0.5))



################################################################################
#
#                             pca.succinico
#                               sensível
################################################################################
succinico.data.txt       <- "Succinico_sensivel.txt"
succinico.axis.x         <- "Sensivel"
succinico.axis.y         <- "Tolerante"
succinico.cluster        <- "Concentração_Al"
succinico.cluster.colour <- "Concentração_Al"

#Al-0	3.29896		0.803233
#Al-0	3.21823		0.720163

succinico.data           <- read.csv(succinico.data.txt, sep="\t")

df.succinico  <- succinico.data[c( 2 , 3)]
pca.succinico <- prcomp(df.succinico)
df.succinico.autoplot <- autoplot(pca.succinico, 
                                  data = succinico.data, 
                                  colour = 'Concentração_Al', 
                                  loadings = TRUE, loadings.label = TRUE)

df.succinico.autoplot + labs(title="Ácido Succínico - Sensível") + theme(plot.title = element_text(hjust = 0.5))



df.succinico.autoplot.frame <- autoplot(pca.succinico, 
                                  data = succinico.data, 
                                  colour = 'Concentração_Al', 
                                  frame = TRUE, frame.type = 'norm')

df.succinico.autoplot.frame + labs(title="Ácido Succínico - Sensível") + theme(plot.title = element_text(hjust = 0.5))


################################################################################
#
#                             pca.succinico
#                               tolerante
################################################################################
succinico.data.txt       <- "Succinico_tolerante.txt"
succinico.axis.x         <- "Sensivel"
succinico.axis.y         <- "Tolerante"
succinico.cluster        <- "Concentração_Al"
succinico.cluster.colour <- "Concentração_Al"

succinico.data           <- read.csv(succinico.data.txt, sep="\t", row.names=NULL)

df.succinico  <- succinico.data[c( 2 , 3)]
pca.succinico <- prcomp(df.succinico)
df.succinico.autoplot <- autoplot(pca.succinico, 
                                  data = succinico.data, 
                                  colour = 'Concentração_Al', 
                                  loadings = TRUE, loadings.label = TRUE)

df.succinico.autoplot + labs(title="Ácido Succínico - Tolerante") + theme(plot.title = element_text(hjust = 0.5))



df.succinico.autoplot.frame <- autoplot(pca.succinico, 
                                        data = succinico.data, 
                                        colour = 'Concentração_Al', 
                                        frame = TRUE, frame.type = 'norm')

df.succinico.autoplot.frame + labs(title="Ácido Succínico - Tolerante") + theme(plot.title = element_text(hjust = 0.5))



dev.off()