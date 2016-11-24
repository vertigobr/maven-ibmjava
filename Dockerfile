# Maven on IBM JDK
#
FROM ibmjava:8-sdk

MAINTAINER BACEN

ARG MAVEN_VERSION=3.3.9

# http://ftp.unicamp.br/pub/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
RUN echo "Build ENV:" && env && \
    mkdir -p /usr/share/maven /usr/share/maven/ref && \
    wget -q -O /tmp/maven.tar.gz http://ftp.unicamp.br/pub/apache/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz && \
    tar -xzC /usr/share/maven --strip-components=1 -f /tmp/maven.tar.gz \
     && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

CMD ["/usr/bin/mvn"]

