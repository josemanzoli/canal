FROM java:8

RUN mkdir -p /opt/canal

COPY ./target/canal-deployer.tar.gz /opt/canal

WORKDIR /opt/canal

RUN tar zxvf canal-deployer.tar.gz

CMD rm -rf /opt/canal/conf/example/server.properties

COPY server.properties /opt/canal/conf/example/server.properties

RUN ls

EXPOSE 11111