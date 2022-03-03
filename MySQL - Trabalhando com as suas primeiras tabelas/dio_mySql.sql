CREATE DATABASE dio_mysql;

USE dio_mysql;

CREATE TABLE pessoas (
	nome VARCHAR(20),
    nascimento DATE,
    PRIMARY KEY(nome)
);

CREATE TABLE pessoa (
	id INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(10) NOT NULL,
    nascimento DATE,
    PRIMARY KEY(id)
);
