#!/bin/bash
#
# Linha de comando "mvn" para quem n�o tem Java instalado.
# Quem tem Docker n�o tem medo.
#
IMGVERSION=$(head -n 1 .IMGVERSION)
IMGVERSION=${IMGVERSION:-"latest"}
IMGNAME=$(head -n 1 .IMGNAME)
docker run --rm -ti \
  -v $(pwd):/opt/app \
  -w /opt/app \
  -v $HOME/.m2:/root/.m2 \
  "$IMGNAME:$IMGVERSION" mvn "$@"
