#!/bin/bash

echo "LIMPANDO E GERANDO GRÁFICOS EM R"
[ -f 'data/Rplots.pdf' ] && rm -rf data/Rplots.pdf

R < oxalico.plot.R --no-save

echo "ARQUIVO DE IMAGEM GERADO EM data/Rplots.pdf"
