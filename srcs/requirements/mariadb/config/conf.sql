CREATE DATABASE if not exists my_database;
CREATE USER 'achraf'@'%';
GRANT ALL PRIVILEGES ON *.* to 'achraf'@'%' IDENTIFIED BY '9998';
alter user 'root'@'localhost' identified by 'dream';
FLUSH PRIVILEGES;