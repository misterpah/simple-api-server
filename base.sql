CREATE DATABASE imma_default_database; 
use imma_default_database;
create table imma_default_table(
   id INT NOT NULL AUTO_INCREMENT,
   fullname VARCHAR(100) NOT NULL,
   age int NOT NULL,
   PRIMARY KEY ( id )
);
CREATE USER 'imma_default_user' IDENTIFIED BY 'imma_default_password';
GRANT ALL PRIVILEGES ON imma_default_database.* TO 'imma_default_user';
