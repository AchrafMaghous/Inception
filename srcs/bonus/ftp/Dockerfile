FROM debian:buster

RUN apt-get update && apt-get -y install vsftpd\
	&& rm -rf /etc/vsftpd.conf

COPY ./config/vsftpd.conf /etc/vsftpd.conf

RUN service vsftpd start \
	&& echo "$USER" | tee -a /etc/vsftpd.userlist\
	&& service vsftpd restart

ENTRYPOINT [ "/etc/init.d/vsftpd" , "start"]
