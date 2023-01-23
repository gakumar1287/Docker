FROM centos:latest
RUN yum install java -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
RUN  wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.85/bin/apache-tomcat-8.5.85.tar.gz
RUN tar -xvzf apache-tomcat-8.5.85.tar.gz
RUN mv apache-tomcat-8.5.85/* /opt/tomcat 
EXPOSE 8080
CMD ["opt/tomcat/bin/startup.sh", "run"]
