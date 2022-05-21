FROM ubuntu
#ENV GRADLE_VERSION=7.42
#RUN curl https://gradle.org/next-steps/?version=${GRADLE_VERSION}-bin.zip
#RUN unzip  ${GRADLE_VERSION}-bin.zip && rm ${GRADLE_VERSION}-bin.zip
#ENV GRADLE_HOME=${GRADLE_VERSION}-bin
#ENV PATH=${GRADLE_HOME}/bin:$PATH
#ENV JAVA_VERSION=18.0.1.1
RUN apt update && apt install gradle && apt   install openjdk
CMD [ "git clone  " ]

