#!/bin/sh

apt-get update && apt-get -y install vsftpd
service vsftpd start
adduser --disabled-password --gecos "" $FTPUSER;
mkdir -p /home/$FTPUSER/ftp/;
chown -R "$FTPUSER:$FTPUSER" /home/$FTPUSER/;
echo "$FTPUSER" >> /etc/vsftpd.userlist
echo "local_enable=YES" >> /etc/vsftpd.conf;
echo "write_enable=YES" >> /etc/vsftpd.conf;
echo "chroot_local_user=YES" >> /etc/vsftpd.conf;
echo "allow_writeable_chroot=YES" >> /etc/vsftpd.conf;
echo "pasv_enable=YES" >> /etc/vsftpd.conf;
echo "pasv_min_port=40000" >> /etc/vsftpd.conf;
echo "pasv_max_port=40005" >> /etc/vsftpd.conf;
echo "userlist_enable=YES" >> /etc/vsftpd.conf;
echo "userlist_file=/etc/vsftpd.userlist" >> /etc/vsftpd.conf;
echo "userlist_deny=NO" >> /etc/vsftpd.conf;
echo "secure_chroot_dir=/home/$FTPUSER/ftp" >> /etc/vsftpd.conf;
service vsftpd restart
/usr/sbin/vsftpd