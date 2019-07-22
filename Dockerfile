FROM tozd/runit:ubuntu-xenial

EXPOSE 53/udp 53/tcp

VOLUME /var/log/powerdns
VOLUME /etc/powerdns/pdns.d

RUN apt-get update -q -q && \
 apt-get install pdns-server --yes

COPY ./etc /etc
