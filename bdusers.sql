CREATE DATABASE IF NOT EXISTS bdusers CHARACTER SET UTF8;
SET DEFAULT_STORAGE_ENGINE=INNODB;

USE bdusers;

CREATE TABLE IF NOT EXISTS users
( 
id INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR(45) NOT NULL,
password VARCHAR (80) NOT NULL,
mail VARCHAR (60) NOT NULL,
id_type INT NOT NULL
);

CREATE TABLE IF NOT EXISTS users_type
( 
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(45) NOT NULL
);

## Añadir foreignk key para relacionar ambas tablas
ALTER TABLE users ADD CONSTRAINT clave1 FOREIGN KEY (id_type) REFERENCES users_type(id);

## Insertar dentro de la tabla usuario administrador + usuario
INSERT INTO users_type (name) VALUES ('Administrador'); 
INSERT INTO users_type (name) VALUES ('Usuario'); 