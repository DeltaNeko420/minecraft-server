FROM alpine
ARG UID=1000
ARG GID=1000
ARG SERVER_JAR_URL
EXPOSE 25565 25575
RUN apk add openjdk17-jre-headless --no-cache\
  && addgroup -g ${GID} minecraft\
  && adduser -G minecraft -u ${UID} -H -D minecraft\
  && wget -O server.jar ${SERVER_JAR_URL}\
  && mkdir server\
  && chown minecraft:minecraft server
COPY docker-entrypoint.sh .
RUN chmod +x docker-entrypoint.sh
USER minecraft
WORKDIR /server
RUN echo "eula=true" > eula.txt
VOLUME ["/server"]
ENTRYPOINT ["/docker-entrypoint.sh"]