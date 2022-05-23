 #!bin/sh
 export GRADLE_VERSION=7.4.1
 curl -O https://downloads.gradle-dn.com/distributions/gradle-${GRADLE_VERSION}-bin.zip
 unzip  gradle-${GRADLE_VERSION}-bin.zip && rm  gradle-${GRADLE_VERSION}-bin.zip
export  GRADLE_HOME=/gradle-${GRADLE_VERSION}/bin
export  PATH=${GRADLE_HOME}:$PATH
#ENV JAVA_VERSION=18.0.1.1
 apt-get update && apt-get install git net-tools strace -y && apt-get    install openjdk-11-jdk openjdk-11-doc openjdk-11-jre -y 