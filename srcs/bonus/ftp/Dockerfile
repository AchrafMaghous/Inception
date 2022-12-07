FROM debian:buster

RUN apt-get update && apt-get -y install vsftpd\
	&& service vsftpd start \
	&& echo "$USER" | tee -a /etc/vsftpd.userlist\
	&& service vsftpd restart

COPY ./config/vsftpd.conf /etc/vsftpd.conf

ENTRYPOINT [ "/etc/init.d/vsftpd" , "start"]
