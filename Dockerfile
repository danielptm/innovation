FROM openjdk:8-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
RUN apk update && apk add bash
RUN apk add terraform
USER spring:spring
ARG JAR_FILE=build/libs/innovation.jar
COPY ${JAR_FILE} innovation.jar
USER root
COPY terraform/local/local.tf terraform/local/local.tf
COPY terraform/local/provider.tf terraform/local/provider.tf
COPY terraform/local/vars.tf terraform/local/vars.tf
COPY terraform/modules terraform/modules
COPY start.sh start.sh
ENTRYPOINT ["bash","start.sh"]