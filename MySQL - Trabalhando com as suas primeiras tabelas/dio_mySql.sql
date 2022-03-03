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

INSERT INTO pessoas (nome, nascimento) VALUES ('Gustavo', '1992-02-10');

SELECT * FROM pessoas;

INSERT INTO pessoas (nome, nascimento) VALUES ('Franciele', '1989-12-08');

SELECT * FROM pessoas;

INSERT INTO pessoa (nome, nascimento) VALUES ('Gustavo', '1992-02-10');

SELECT * FROM pessoa;
