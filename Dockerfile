# Maven on IBM JDK
#
FROM maven:3-ibmjava-8

COPY settings.xml /usr/share/maven/conf/settings.xml
