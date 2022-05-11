FROM alpine

ARG SERVER_JAR_URL

EXPOSE 25565 25575

RUN apk add openjdk17-jre-headless libwebp-tools --no-cache\
  && wget -O server.jar ${SERVER_JAR_URL}
COPY docker-entrypoint.sh .
RUN chmod +x docker-entrypoint.sh

WORKDIR /server
VOLUME ["/server"]

ENTRYPOINT ["../docker-entrypoint.sh"]