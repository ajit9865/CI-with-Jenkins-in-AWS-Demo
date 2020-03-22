
RUN mkdir /usr/local/tomcat/webapps/mywebapp

COPY project/target/project-1.0-RAMA.war /usr/local/tomcat/webapps/project-1.0-RAMA.war
