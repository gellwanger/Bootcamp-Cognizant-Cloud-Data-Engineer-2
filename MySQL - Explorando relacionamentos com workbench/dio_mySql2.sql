CREATE DATABASE dio_mySql2;

USE dio_mySql2;

CREATE TABLE videos (
	id_video INT AUTO_INCREMENT,
    author VARCHAR(30) NOT NULL,
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

	SELECT * FROM author;

	INSERT INTO author (author_name, born) VALUES ('Maria', '1992-08-19');

	INSERT INTO author (author_name, born) VALUES ('João', '1990-03-12');

	INSERT INTO author (author_name, born) VALUES ('Pedro', '1993-12-15');

	INSERT INTO author (author_name, born) VALUES ('Alucard', '1995-03-29');

	INSERT INTO author (author_name, born) VALUES ('Joana', '1989-05-02');
