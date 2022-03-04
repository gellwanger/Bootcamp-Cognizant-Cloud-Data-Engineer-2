CREATE DATABASE movies_controll;

USE movies_controll;

CREATE TABLE movies (
	id INT PRIMARY KEY AUTO_INCREMENT,
    type_media INT NOT NULL,
    name_media VARCHAR(30) NOT NULL,
    total_ep INT,
    atual_ep INT,
	last_view TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

SELECT * FROM movies;

INSERT INTO movies (type_media, name_media, total_ep, atual_ep) VALUES 
(0, 'Friends', 10, 1),
(1, 'Avengers', 1, NULL);

SELECT * FROM movies;

INSERT INTO movies (type_media, name_media, total_ep, atual_ep) VALUES 
(0, 'Arcane', 8, 1);

SELECT * FROM movies;

UPDATE movies SET movies.atual_ep = 2
	WHERE movies.id = 3;
    
SELECT * FROM movies;

INSERT INTO movies (type_media, name_media, total_ep, atual_ep) VALUES 
(0, 'Breaking Bad', 10, 9),
(1, 'Trẽs Anúncios para um crime', 1, NULL),
(0, 'How I Met Your Mother', 10, 7),
(1, 'Batman', 1, NULL);

SELECT * FROM movies;

INSERT INTO movies (type_media, name_media, total_ep, atual_ep) VALUES 
(1, '1917', 8, NULL);

SELECT * FROM movies;

UPDATE movies SET total_ep = 1
where name_media = '1917';

SELECT * FROM movies;