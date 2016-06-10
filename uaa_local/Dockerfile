# CloudFoundry User Authentication & Authorization service with version 3.2.1
FROM java:openjdk-8u66-jre

MAINTAINER cporter

ENV CLOUD_FOUNDRY_CONFIG_PATH /uaa
ENV UAA_CONFIG_PATH /uaa
ENV CATALINA_HOME /tomcat

RUN mkdir /uaa /tomcat

ADD run.sh /tmp/
ADD config/uaa.yml /uaa/uaa.yml
ADD cloudfoundry-identity-uaa-3.2.1.war /tmp/

RUN chmod +x /tmp/run.sh

ADD apache-tomcat-8.0.28.tar.gz /tmp/

RUN mv /tmp/apache-tomcat-8.0.28/* /tomcat
RUN rm -rf /tmp/apache-tomcat-8.0.28 /tomcat/webapps/*

ADD cloudfoundry-identity-uaa-3.2.1.war /tomcat/webapps/
RUN mv /tomcat/webapps/cloudfoundry-identity-uaa-3.2.1.war /tomcat/webapps/ROOT.war

RUN ls -l /tmp/*

EXPOSE 8080

CMD ["/tmp/run.sh"]
