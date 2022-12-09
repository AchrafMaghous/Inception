FROM debian:buster

COPY ./config/script.sh /tmp/script.sh

RUN chmod +x /tmp/script.sh

ENTRYPOINT [ "/tmp/script.sh"]

COPY ./config/vsftpd.conf /etc/vsftpd.conf

CMD [ "/usr/sbin/vsftpd" ]