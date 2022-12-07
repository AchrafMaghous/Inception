FROM debian:buster

RUN apt-get update && apt-get -y install vsftpd

COPY ./config/vsftpd.conf /etc/vsftpd.conf

RUN /etc/init.d/vsftpd restart

ENTRYPOINT	ftp 0.0.0.0