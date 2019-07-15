FROM openjdk:12

ARG SCANNER_VERSION=4.0.0.1744

RUN yum install install -y -q unzip wget && \
    wget -P /opt/ https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SCANNER_VERSION}-linux.zip && \
    unzip -d /opt /opt/sonar-scanner-cli-${SCANNER_VERSION}-linux.zip  && \
    ln -s /opt/sonar-scanner-${SCANNER_VERSION}-linux/bin/sonar-scanner /bin/sonar-scanner && \
    rm -f /opt/sonar-scanner-cli-${SCANNER_VERSION}-linux.zip

