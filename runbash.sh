#!/bin/bash
IMGVERSION=$(head -n 1 .IMGVERSION)
IMG_VERSION=${IMG_VERSION:-"latest"}
IMGNAME=$(head -n 1 .IMGNAME)
ENVBASH=$1
ENVBASH=${ENVBASH:-"bash"}
docker run --rm -ti "$IMGNAME:$IMGVERSION" $ENVBASH ${@:2}
