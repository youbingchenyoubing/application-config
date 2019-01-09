FROM java:8-alpine
VOLUME /tmp
ADD local_policy.jar usr/lib/jvm/java-1.8-openjdk/jre/lib/security/
ADD US_export_policy.jar usr/lib/jvm/java-1.8-openjdk/jre/lib/security/
ADD common-config.jar /app.jar
EXPOSE 8762
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=${SPRING_PROFILE_ACTIVE}","-jar","/app.jar"]
