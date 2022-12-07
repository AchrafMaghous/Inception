FROM debian:buster

RUN apt-get update && apt-get -y install vsftpd \
	&& rm -rf /etc/vsftpd.conf \
	&& service vsftpd start

RUN adduser $USER \
	&& mkdir /home/$USER/ftp\
	&& chown nobody:nogroup /home/$USER/ftp && chmod a-w /home/$USER/ftp \
	&& mkdir /home/$USER/ftp/upload \
	&& chown $USER:$USER /home/$USER/ftp/upload

COPY ./config/vsftpd.conf /etc/vsftpd.conf

RUN echo "$USER" | tee -a /etc/vsftpd.userlist \
	&& service vsftpd restart

ENTRYPOINT [ "/usr/sbin/vsftpd"]
