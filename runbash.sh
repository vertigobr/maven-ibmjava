#!/bin/bash
ENVBASH=$1
ENVBASH=${ENVBASH:-"bash"}
docker run --rm -ti vertigo/maven-ibmjava $ENVBASH ${@:2}
