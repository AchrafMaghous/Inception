FROM debian:buster

RUN apt-get update && apt-get -y install vsftpd\
	&& service vsftpd start

COPY ./config/vsftpd.conf /etc/vsftpd.conf

CMD [ "/etc/init.d/vsftpd"]
