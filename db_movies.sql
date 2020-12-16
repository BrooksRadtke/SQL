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
	(director_name)
	VALUES
	('Steven Spielberg'),
	('George Lucas'),
	('Alfred Hitchcock'),
	('Sam Mendez'),
	('Christopher Nolan');

INSERT INTO tbl_directors
	(director_movie)
	VALUES
	('Jurassic World'),
	('Star Wars'),
	('Psycho'),
	('Skyfall'),
	('Inception');

SELECT * FROM tbl_directors;

CREATE TABLE tbl_composers
(composer_id INT PRIMARY KEY NOT NULL IDENTITY (100,1),
composer_name VARCHAR(50) NOT NULL,
composer_movie VARCHAR(50) NOT NULL);

INSERT INTO tbl_composers
	(composer_name)
	VALUES
	('John Williams'),
	('Bernard Hermann'),
	('Thomas Newman'),
	('Hans Zimmer'),
	('Michael Giaccino');

INSERT INTO tbl_composers
	(composer_movie)
	VALUES
	('Star Wars'),
	('Psycho'),
	('Skyfall'),
	('Inception'),
	('Jurrasic World');

SELECT * FROM tbl_composers;

