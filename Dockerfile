FROM centos:latest

RUN yum install java -y

RUN mkdir /opt/tomcat

WORKDIR /opt/tomcat

ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.63/bin/apache-tomcat-9.0.63.tar.gz .

RUN tar -xzf apache-tomcat-9.0.63.tar.gz

COPY target/vprofile-v1.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080 

CMD ["catalina.sh", "run"]
