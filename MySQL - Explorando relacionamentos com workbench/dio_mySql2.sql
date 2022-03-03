CREATE DATABASE dio_mySql2;

USE dio_mySql2;

CREATE TABLE videos (
	id_video INT AUTO_INCREMENT,
    author VARCHAR(30),
    title VARCHAR(30) NOT NULL,
    likes INT,
    dislikes INT,
    PRIMARY KEY(id_video)
);

INSERT INTO videos (author, title, likes, dislikes) VALUES ('Maria', 'MySql', 10, 2);

INSERT INTO videos (author, title, likes, dislikes) VALUES ('João', 'HTML', 30, 4);

INSERT INTO videos (author, title, likes, dislikes) VALUES ('Pedro', 'JavaScript', 18, 3);

INSERT INTO videos (author, title, likes, dislikes) VALUES ('Alucard', 'Python', 42, 1);

INSERT INTO videos (author, title, likes, dislikes) VALUES ('Joana', 'CSS', 18, 2);

SELECT * FROM videos;

CREATE TABLE author (
	id_author INT AUTO_INCREMENT,
    author_name VARCHAR(30) NOT NULL,
    born DATE,
    PRIMARY KEY(id_author)
);

SELECT * FROM author ORDER BY id_author;

INSERT INTO author (author_name, born) VALUES ('Maria', '1992-08-19');

INSERT INTO author (author_name, born) VALUES ('João', '1990-03-12');

INSERT INTO author (author_name, born) VALUES ('Maria', '1992-08-19');

INSERT INTO author (author_name, born) VALUES ('Maria', '1992-08-19');

INSERT INTO author (author_name, born) VALUES ('João', '1990-03-12');

UPDATE videos SET author='';

SELECT * FROM videos;

ALTER TABLE videos
DROP COLUMN author;

SELECT * FROM videos;

ALTER TABLE videos
ADD author INT NOT NULL;

SELECT * FROM videos;

UPDATE videos SET author=1 WHERE id_video=1;

UPDATE videos SET author=1 WHERE id_video=3;

UPDATE videos SET author=1 WHERE id_video=4;

UPDATE videos SET author=2 WHERE id_video=2;

UPDATE videos SET author=2 WHERE id_video=5;

SELECT * FROM videos JOIN author ON videos.author = author.id_author;

CREATE TABLE seo (
	id_seo INT AUTO_INCREMENT,
    category VARCHAR(20),
    PRIMARY KEY(id_seo)
);

SELECT * FROM seo;

INSERT INTO videos (author, title, likes, dislikes) VALUES (2, 'PHP', 23, 4);

SELECT * FROM videos;

INSERT INTO seo (category) VALUES ('Frontend');

INSERT INTO seo (category) VALUES ('Backend');

SELECT * FROM seo;

ALTER TABLE videos ADD fk_seo INT NOT NULL;

SELECT * FROM videos;

UPDATE videos SET fk_seo=1 WHERE id_video=1;

UPDATE videos SET fk_seo=1 WHERE id_video=1;

UPDATE videos SET fk_seo=2 WHERE id_video=2;

UPDATE videos SET fk_seo=2 WHERE id_video=3;

UPDATE videos SET fk_seo=1 WHERE id_video=4;

UPDATE videos SET fk_seo=1 WHERE id_video=5;

UPDATE videos SET fk_seo=1 WHERE id_video=6;

SELECT * FROM videos;