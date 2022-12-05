FROM debian:buster

COPY ./config/setup.sh /tmp/setup.sh

RUN chmod +x /tmp/setup.sh

ENTRYPOINT [ "/tmp/setup.sh" ]