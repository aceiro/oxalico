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
#
################################################################################
oxalico.data.txt       <- "Oxalico_geral.txt"
oxalico.axis.x         <- "mssensivel.oxalico"
oxalico.axis.y         <- "mlsensivel.oxalico"
oxalico.cluster        <- "al"
oxalico.cluster.colour <- "al"
oxalico.data           <- read.csv(oxalico.data.txt, sep="\t")

df.oxalico  <- oxalico.data[c( 3 , 4)]
pca.oxalico <- prcomp(df.oxalico)
df.oxalico.autoplot <- autoplot(pca.oxalico, 
                       data = oxalico.data, 
                       colour = 'Concentração_Al', 
                       loadings = TRUE, loadings.label = TRUE)

df.oxalico.autoplot + labs(title="Ácido Oxálico") + theme(plot.title = element_text(hjust = 0.5))

df.oxalico.autoplot.frame <- autoplot(pca.oxalico, 
                                        data = oxalico.data, 
                                        colour = 'Concentração_Al', 
                                        frame = TRUE, frame.type = 'norm')

df.oxalico.autoplot.frame + labs(title="Ácido Oxálico") + theme(plot.title = element_text(hjust = 0.5))


################################################################################
#
#                             pca.succinico
#
################################################################################
succinico.data.txt       <- "Succinico_geral.txt"
succinico.axis.x         <- "Sensivel"
succinico.axis.y         <- "Tolerante"
succinico.cluster        <- "Concentração_Al"
succinico.cluster.colour <- "Concentração_Al"

succinico.data           <- read.csv(succinico.data.txt, sep="\t")

df.succinico  <- succinico.data[c( 3 , 4)]
pca.succinico <- prcomp(df.succinico)
df.succinico.autoplot <- autoplot(pca.succinico, 
                                  data = succinico.data, 
                                  colour = 'Concentração_Al', 
                                  loadings = TRUE, loadings.label = TRUE)

df.succinico.autoplot + labs(title="Ácido Succínico") + theme(plot.title = element_text(hjust = 0.5))



df.succinico.autoplot.frame <- autoplot(pca.succinico, 
                                  data = succinico.data, 
                                  colour = 'Concentração_Al', 
                                  frame = TRUE, frame.type = 'norm')

df.succinico.autoplot.frame + labs(title="Ácido Succínico") + theme(plot.title = element_text(hjust = 0.5))



dev.off()