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
SET CLASS_ID = 101
WHERE STUDENT_NAME = 'Ted T';

--Step 10
UPDATE tbl_students
SET INSTRUCTOR_ID = 1001
WHERE STUDENT_NAME = 'Josh W';

--step 11
SELECT INSTRUCTOR_NAME FROM tbl_instructors;

--step 12
SELECT STUDENT_NAME
FROM tbl_students
ORDER BY STUDENT_NAME ASC;

--step 13
SELECT tbl_classes.CLASS_NAME, tbl_students.STUDENT_NAME, tbl_instructors.INSTRUCTOR_NAME
FROM tbl_classes
INNER JOIN tbl_students ON tbl_classes.CLASS_ID = tbl_students.CLASS_ID
INNER JOIN tbl_instructors ON tbl_students.INSTRUCTOR_ID = tbl_instructors.INSTRUCTOR_ID;

SELECT * FROM tbl_students
SELECT * FROM tbl_classes
SELECT * FROM tbl_instructors