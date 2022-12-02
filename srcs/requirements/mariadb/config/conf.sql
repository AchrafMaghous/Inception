CREATE DATABASE if not exists mydb;
CREATE USER 'achraf'@'%';
GRANT ALL PRIVILEGES ON mydb.* to 'achraf'@'%' IDENTIFIED BY '9998';
alter user 'root'@'localhost' identified by '0000';
FLUSH PRIVILEGES;