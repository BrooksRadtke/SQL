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
ADD CLASS_ID VARCHAR(50), INSTRUCTOR_ID VARCHAR(50);

ALTER TABLE tbl_students
ADD CONSTRAINT fk_CLASS_ID
FOREIGN KEY REFERENCES tbl_classes(CLASS_ID);