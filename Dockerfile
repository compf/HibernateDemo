FROM mysql

ENV GRADLE_VERSION=7.4.1
ENV MYSQL_DATABASE='demoDB'
ENV MYSQL_ROOT_PASSWORD=''
ENV MYSQL_ALLOW_EMPTY_PASSWORD='yes'

RUN apt-get update && apt install curl zip unzip -y
RUN curl -O https://downloads.gradle-dn.com/distributions/gradle-${GRADLE_VERSION}-bin.zip
RUN unzip  gradle-${GRADLE_VERSION}-bin.zip && rm  gradle-${GRADLE_VERSION}-bin.zip
ENV GRADLE_HOME=/gradle-${GRADLE_VERSION}/bin
ENV PATH=${GRADLE_HOME}:$PATH
#ENV JAVA_VERSION=18.0.1.1
RUN apt-get update && apt-get install git net-tools strace -y && apt-get    install openjdk-11-jdk openjdk-11-doc openjdk-11-jre -y 
COPY . HibernateDemo
#COPY .pgpass /root/
#COPY ./sql/*.sql /docker-entrypoint-initdb.d/
#RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
#RUN printf '#!/bin/sh\nexit 0' > /usr/sbin/policy-rc.d

#RUN apt-get install postgresql -y
CMD ["/HibernateDemo/app.sh"]

#git clone https://github.com/compf/HibernateDemo &&

