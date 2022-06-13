#!/bin/bash
GRADLE_VERSION=7.4.1
if [ ! -e gradle-${GRADLE_VERSION} ];then
    curl -O https://downloads.gradle-dn.com/distributions/gradle-${GRADLE_VERSION}-bin.zip
    unzip  gradle-${GRADLE_VERSION}-bin.zip && rm  gradle-${GRADLE_VERSION}-bin.zip
fi
GRADLE_HOME=/home/compf/Documents/hibernate/HibernateDemo/gradle-${GRADLE_VERSION}/bin
export PATH=${GRADLE_HOME}:$PATH
echo $PATH