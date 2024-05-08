#

# Build

#

FROM maven:3.8.3-openjdk-17 AS build

COPY src /home/app/src

COPY pom.xml /home/app

#

# Package stage

#

FROM openjdk:17-alpine

COPY --from=build /home/app/target/SpringMVCHibernate-0.0.1-SNAPSHOT.war /usr/local/lib/SpringMVCHibernate-0.0.1-SNAPSHOT.war

ENTRYPOINT ["java","-jar","/usr/local/lib/SpringMvcHibernate-0.0.1-SNAPSHOT.war"]
