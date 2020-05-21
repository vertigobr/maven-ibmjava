#!/bin/bash
#
docker run --rm -ti \
  -v $(pwd):/opt/app \
  -w /opt/app \
  -v $HOME/.m2:/var/maven/.m2 \
  -e MAVEN_CONFIG=/var/maven/.m2 \
  -u "$UID:$GID" \
  vertigo/maven-ibmjava mvn -Duser.home=/var/maven "$@"
