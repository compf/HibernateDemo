#!/bin/bash
GRADLE_VERSION=7.4.1
curl -O https://downloads.gradle-dn.com/distributions/gradle-${GRADLE_VERSION}-bin.zip
unzip  gradle-${GRADLE_VERSION}-bin.zip && rm  gradle-${GRADLE_VERSION}-bin.zip
GRADLE_HOME=/gradle-${GRADLE_VERSION}/bin
ENV PATH=${GRADLE_HOME}:$PATH