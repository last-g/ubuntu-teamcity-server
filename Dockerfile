# docker run -dt -p 8111:8111 lastg/ubuntu14.04-teamcity-server

FROM library/ubuntu:15.10

MAINTAINER Last G <last_g@hackerdom.ru>

# TeamCity data is stored in a volume to facilitate container upgrade
VOLUME  ["/var/teamcity"]
ENV TEAMCITY_DATA_PATH /var/teamcity

# Download and install TeamCity to /opt
RUN apt-get update && apt-get -yy --force-yes dist-upgrade && apt-get install -yy --force-yes tar wget openjdk-8-jdk
ENV TEAMCITY_PACKAGE TeamCity-9.1.3.tar.gz
ENV TEAMCITY_DOWNLOAD http://download.jetbrains.com/teamcity
RUN wget $TEAMCITY_DOWNLOAD/$TEAMCITY_PACKAGE && \
    tar zxf $TEAMCITY_PACKAGE -C /opt && \
    rm -rf $TEAMCITY_PACKAGE

EXPOSE 8111
CMD ["/opt/TeamCity/bin/teamcity-server.sh", "run"]
