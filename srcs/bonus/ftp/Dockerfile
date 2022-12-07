FROM debian:buster

RUN apt-get update && apt-get -y install vsftpd\
	&& service vsftpd start

COPY ./config/vsftpd.conf /etc/vsftpd.conf

ENTRYPOINT [ "/etc/init.d/vsftpd" , "restart"]
