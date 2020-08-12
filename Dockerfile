FROM node:9.6.1
VOLUME /tmp
ADD target/spring-petclinic-*.jar /petclinic.jar
EXPOSE 8080
RUN bash -c 'touch /petclinic.jar'
ENTRYPOINT ["java","-jar", "/petclinic.jar"]
