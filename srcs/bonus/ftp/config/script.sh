#!/bin/sh

apt-get update && apt-get -y install vsftpd
service vsftpd start
adduser --disabled-password --gecos "" $FTPUSER\
mkdir /home/$FTPUSER/ftp\
chown nobody:nogroup /home/$FTPUSER/ftp && chmod a-w /home/$FTPUSER/ftp \
mkdir /home/$FTPUSER/ftp/upload \
chown $FTPUSER:$FTPUSER /home/$FTPUSER/ftp/upload
echo "$FTPUSER" | tee -a /etc/vsftpd.userlist \
service vsftpd restart