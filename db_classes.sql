CREATE DATABASE db_School
GO

USE db_School;

CREATE TABLE tbl_classes
	(CLASS_ID INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	CLASS_NAME VARCHAR(50) NOT NULL);

CREATE TABLE tbl_students
	(STUDENT_ID INT PRIMARY KEY NOT NULL IDENTITY (10,1),
	STUDENT_NAME VARCHAR(50) NOT NULL);

CREATE TABLE tbl_instructors
	(INSTRUCTOR_ID INT PRIMARY KEY NOT NULL IDENTITY (1000,1),
	INSTRUCTOR_NAME VARCHAR(50) NOT NULL);

ALTER TABLE tbl_students
ADD CLASS_ID INT, INSTRUCTOR_ID INT;

ALTER TABLE tbl_students
ADD CONSTRAINT fk_CLASS_ID
FOREIGN KEY (CLASS_ID) REFERENCES tbl_classes(CLASS_ID);

INSERT INTO tbl_classes 
	VALUES
	('Software Developer Boot Camp'),
	('C# Boot Camp');

INSERT INTO tbl_students (STUDENT_NAME)
	VALUES
	('Sean C'),
	('Joe O'),
	('Greg H'),
	('Josh W'),
	('Mariah Y'),
	('Ted T');

INSERT INTO tbl_instructors
	VALUES
	('Erik Gross'),
	('Sir Ulrich Von Liechtenstien');

--step 9
UPDATE tbl_students
SET STUDENT_NAME = 'Sean C'
WHERE CLASS_ID = 100;

SELECT * FROM tbl_students
SELECT * FROM tbl_classes

UPDATE tbl_students
SET STUDENT_NAME = 'Sean C'
WHERE INSTRUCTOR_ID = 'Erik Gross';