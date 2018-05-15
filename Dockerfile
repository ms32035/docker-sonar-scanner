FROM openjdk:8

ARG SCANNER_VERSION=3.1.0.1141

RUN apt-get update && \
    apt-get -y dist-upgrade && \
    apt-get -y install unzip wget && \
    wget -P /opt/ https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SCANNER_VERSION}-linux.zip && \
    unzip -d /opt /opt/sonar-scanner-cli-${SCANNER_VERSION}-linux.zip  && \
    ln -s /opt/sonar-scanner-${SCANNER_VERSION}-linux/bin/sonar-scanner /bin/sonar-scanner && \
    rm -f /opt/sonar-scanner-cli-${SCANNER_VERSION}-linux.zip

