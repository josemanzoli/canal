FROM java:8

RUN mkdir -p /opt/canal

COPY ./target/canal-deployer.tar.gz /opt/canal

WORKDIR /opt/canal

RUN tar zxvf canal-deployer.tar.gz

RUN ls

EXPOSE 11111

RUN /opt/canal/bin/startup.sh