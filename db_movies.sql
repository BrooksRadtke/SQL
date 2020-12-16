USE master
GO
CREATE DATABASE db_movies;
GO

USE db_movies

CREATE TABLE tbl_directors
(directors_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
director_name VARCHAR(50) NOT NULL,
director_movie VARCHAR(50) NOT NULL);

INSERT INTO tbl_directors
	(director_name, director_movie)
	VALUES
	('Steven Spielberg', 'Jurassic World'),
	('George Lucas', 'Star Wars'),
	('Alfred Hitchcock', 'Psycho'),
	('Sam Mendez', 'Skyfall'),
	('Christopher Nolan', 'Inception');

SELECT * FROM tbl_directors;

CREATE TABLE tbl_composers
(composer_id INT PRIMARY KEY NOT NULL IDENTITY (100,1),
composer_name VARCHAR(50) NOT NULL,
composer_movie VARCHAR(50) NOT NULL);

INSERT INTO tbl_composers
	(composer_name, composer_movie)
	VALUES
	('John Williams', 'Star Wars'),
	('Bernard Hermann', 'Psycho'),
	('Thomas Newman', 'Skyfall'),
	('Hans Zimmer', 'Inception'),
	('Michael Giaccino', 'Jurrasic World');

SELECT * FROM tbl_composers;

