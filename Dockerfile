FROM java:8

RUN apt-get update && apt-get install -y wget

ENV DOCKERIZE_VERSION v0.3.0
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

RUN mkdir -p /opt/canal

COPY ./target/canal-deployer.tar.gz /opt/canal

WORKDIR /opt/canal

RUN tar zxvf canal-deployer.tar.gz

RUN rm -rf /opt/canal/conf/example/instance.properties

RUN ls

RUN chmod +x bin/startup.sh bin/stop.sh

COPY instance.properties /opt/canal/conf/example/instance.properties

#RUN mkdir -p /opt/canal/logs/canal
#RUN mkdir -p /opt/canal/logs/example
#RUN ln -sf /dev/stdout /opt/canal/logs/canal/canal.log
#RUN ln -sf /dev/stderr /opt/canal/logs/example/example.log

EXPOSE 11111