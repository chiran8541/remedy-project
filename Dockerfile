FROM nexus.nee.com/amazoncorretto:8
VOLUME /opt
ARG JAR_FILE=*.war
ADD ${JAR_FILE} meterops.war
ENV JAVA_OPTS="-Xms512m -Xmx1024m"
ENTRYPOINT ["java","-Dspring.profiles.active=@profile@","-Xmx1024m","-Xms516m","-jar","meterops.war"]
