FROM debian:buster

RUN apt-get update && apt-get -y install vsftpd \
	&& rm -rf /etc/vsftpd.conf

COPY ./config/vsftpd.conf /etc/vsftpd.conf

RUN service vsftpd start \
	&& adduser --gecos "" $FTPUSER \
	&& mkdir /home/$FTPUSER/ftp\
	&& chown nobody:nogroup /home/$FTPUSER/ftp && chmod a-w /home/$FTPUSER/ftp \
	&& mkdir /home/$FTPUSER/ftp/upload \
	&& chown $FTPUSER:$FTPUSER /home/$FTPUSER/ftp/upload

RUN echo "$FTPUSER" | tee -a /etc/vsftpd.userlist \
	&& service vsftpd restart

ENTRYPOINT [ "/usr/sbin/vsftpd"]
