FROM tomcat:latest
 
COPY ${WAR_FILE} /usr/local/tomcat/webapps/SpringMVCHibernate.war
 
EXPOSE 8084
 
CMD [ "catalina.sh" , "run" ]
