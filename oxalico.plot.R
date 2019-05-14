library(ggplot2)

setwd("./data")

oxalico.data.txt       <- "oxalico.txt"
oxalico.axis.x         <- "mssensivel.oxalico"
oxalico.axis.y         <- "mlsensivel.oxalico"
oxalico.cluster        <- "al"
oxalico.cluster.colour <- "al"

oxalico.data           <- read.csv(oxalico.data.txt, sep=";")

oxalico.plot.shape     <- ggplot(oxalico.data, 
	                            aes_string(x=oxalico.axis.x, 
	                            	       y=oxalico.axis.y, 
	                            	       shape=oxalico.cluster, 
	                            	       colour=oxalico.cluster.colour)) + geom_point()
oxalico.plot.shape
