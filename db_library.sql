CREATE DATABASE db_library
GO

USE db_library;

CREATE TABLE tbl_LIBRARY_BRANCH
	(Branch_ID INT PRIMARY KEY NOT NULL IDENTITY (5000,10),
	BranchName VARCHAR(50) NOT NULL,
	"Address" VARCHAR(50) NOT NULL);

CREATE TABLE tbl_BOOK_COPIES
	(Book_ID INT FOREIGN KEY (Book_ID) REFERENCES tbl_BOOKS(Book_ID),
	Branch_ID INT FOREIGN KEY (Branch_ID) REFERENCES tbl_LIBRARY_BRANCH(Branch_ID),
	Number_of_Copies INT NOT NULL);

CREATE TABLE tbl_BOOKS
	(Book_ID INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	Title VARCHAR(50) NOT NULL,
	PublisherName VARCHAR(50) FOREIGN KEY (PublisherName) REFERENCES tbl_PUBLISHER(PublisherName));

CREATE TABLE tbl_PUBLISHER
	(PublisherName VARCHAR(50) PRIMARY KEY NOT NULL,
	"Address" VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL);

CREATE TABLE tbl_BOOK_AUTHORS
	(Book_ID INT FOREIGN KEY (Book_ID) REFERENCES tbl_BOOKS(Book_ID),
	AuthorName VARCHAR(50) NOT NULL);

CREATE TABLE tbl_BORROWER
	(CardNo INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	"Name" VARCHAR(50) NOT NULL,
	"Address" VARCHAR(50) NOT NULL,
	"Phone" VARCHAR(50) NOT NULL);

CREATE TABLE tbl_BOOK_LOANS
	(Book_ID INT FOREIGN KEY (Book_ID) REFERENCES tbl_BOOKS(Book_ID),
	Branch_ID INT FOREIGN KEY (Branch_ID) REFERENCES tbl_LIBRARY_BRANCH(Branch_ID),
	CardNo INT FOREIGN KEY (CardNo) REFERENCES tbl_BORROWER(CardNo),
	DateOut VARCHAR(10) NOT NULL,
	DateDue VARCHAR(10) NOT NULL);

INSERT INTO tbl_LIBRARY_BRANCH
	(BranchName, "Address")
	VALUES
	('Sharpstown', '12 N A Ave'),
	('Dullston', '143 NE D ST'),
	('Intelliville', '4149 W SALEM RD'),
	('Portland', '246 SE WESTCHISTER'),
	('Corvallis','828 E ORCHARD PK'),
	('McNillies', '11223 Windy St.');

INSERT INTO tbl_BORROWER
	("Name", "Address", Phone)
	VALUES
	('John Jacob', '7928 Market Ave Apt 1', '541.232.1408'),
	('Jingle Heimer-Schmitt', '403 Main ST', '183.502.2235'),
	('Hish Nam', '283 SE Oak Ave', '567.983.2874'),
	('Ish-ma Nam', '283 SE Oak Ave', '108.432.6574'),
	('To-wen Eve', '443 S Paw Dr', '909.618.7123'),
	('Rewe Gout', '987 W ELM', '784.221.1437'),
	('LePeo Ple', '4378 Liberty St', '938.410.1478'),
	('Alwz Shouthere-Gose', '556 Childrens Rhymes Way', '444.123.8592');

INSERT INTO tbl_PUBLISHER
	(PublisherName, "Address", Phone)
	VALUES
	('SealDeals', '434 S Fischer St', '909.321.4142'),
	('Hatchet Publishing','89093 Sharpened Way','478.234.6268'),
	('Harpist-and-Cunning', '10001 Spectre Ave Unit 12', '784.424.1759'),
	('McGrathe''s Catch','5806 Ocean Ct.', '234.526.7266'),
	('Simon Said', '10001 Spectre Ave Unit 45', '994.141.1444'),
	('McDraw Education', '252 Learned Way', '878.980.2341'),
	('Smoken Muffler Publishers', '349 Look Out Ave', '911.408.1458'),
	('Piece-By-Piece Education', '666 KNOWLEDGE Dr', '848.487.2341'),
	('Schooltendo', '44 E Books', '233.334.4454'),
	('Springer Falls', '293 Yippy St','123.456.7889');

INSERT INTO tbl_BOOKS
	(Title, PublisherName)
	VALUES
	('To Raise A Hummingbird', 'Hatchet Publishing'),
	('1489', 'SealDeals'),
	('The Lady of the Bracelets', 'Springer Falls'),
	('The Snatcher of Blue Eyes', 'Schooltendo'),
	('The So-So Gatsby','Smoken Muffler Publishers'),
	('The Kitty, the Cat Lady, and the Closet','Simon Said'),
	('The Dutchess of Ducks', 'Springer Falls'),
	('Caught-19', 'McGrathe''s Catch'),
	('The Spoils of Great Grapes','Piece-By-Piece Education'),
	('Left with the Breeze','McDraw Education'),
	('Birthing-Place','Springer Falls'),
	('Violas: Inside Story','Piece-By-Piece Education'),
	('Cow Jumped Over the Moon','Simon Said'),
	('I Fixed Your Orange Clock', 'McDraw Education'),
	('Renewal', 'Hatchet Publishing'),
	('Sleepy Nightwatch', 'McGrathe''s Catch'),
	('Please Let Me Go', 'SealDeals'),
	('Putting It All Back Together','Harpist-and-Cunning'),
	('The Lost Tribe','Simon Said'),
	('The Sound of Fury', 'Springer Falls');

INSERT INTO tbl_BOOK_AUTHORS
	(Book_ID, AuthorName)
	VALUES
	(102,'H.J. Token'),
	(106,'Goldine Flemming'),
	(107,'Joe Heckler'),
	(108, 'Sue Becker'),
	(110, 'Burt Von Donut'),
	(112, 'Kasey Kennedy'),
	(113,'Anton Burgeese'),
	(116, 'Yasu Ichikawa'),
	(118, 'Ralph Ichebe'),
	(119,'Virginia Morrison');

INSERT INTO tbl_BOOK_COPIES
	(Number_of_Copies,Book_ID, Branch_ID)
	VALUES
	(4, 100, 5000),
	(5, 101, 5000),
	(3, 102, 5010),
	(6, 103, 5020),
	(4, 104, 5030),
	(5, 105, 5030),
	(2, 106, 5040),
	(2, 107, 5020),
	(6, 108, 5050),
	(5, 109, 5030),
	(4, 110, 5020),
	(3, 110, 5010),
	(3, 111, 5000),
	(3, 112, 5040),
	(7, 113, 5050),
	(3, 114, 5020),
	(2, 115, 5010),
	(4, 116, 5010),
	(5, 117, 5040),
	(2, 118, 5030),
	(10, 119, 5000);

INSERT INTO tbl_BOOK_LOANS
	(Book_ID, Branch_ID, CardNo, DateOut, DateDue)
	VALUES
	(103, 5020, 1, '12/13/2020', '01/01/2021'),
	(105, 5030, 2, '10/18/2019','12/01/2019'),
	(106, 5040, 3,'04/13/2020', '06/01/2020'),
	(108, 5050, 4, '09/02/2020','09/16/2020'),
	(108, 5050, 5, '09/02/2020','09/16/2020'),
	(109, 5030, 6, '08/22/2020','11/01/2020'),
	(110,5010, 7, '02/29/2020','03/14/2020'),
	(114, 5020, 8, '03/14/2020','03/28/2020'),
	(118, 5030, 3,'05/05/2020','12/01/2020'),
	(119, 5000, 6, '12/20/2020','01/04/2020');

SELECT *
FROM tbl_BOOK_LOANS
FULL OUTER JOIN tbl_BORROWER ON tbl_BOOK_LOANS.CardNo = tbl_BORROWER.CardNo
FULL OUTER JOIN tbl_BOOKS ON tbl_BOOK_LOANS.Book_ID = tbl_BOOKS.Book_ID;

--Query that returns all book titles and authors
CREATE PROC getBooksAndAuthors
AS
BEGIN
	SELECT Title, AuthorName
	FROM tbl_BOOKS
	INNER JOIN tbl_BOOK_AUTHORS ON tbl_BOOK_AUTHORS.Book_ID = tbl_BOOKS.Book_ID
END

--Executable Query
EXEC [dbo].[getBooksAndAuthors]

--Create query that returns number of copies of "The Lost Tribe" at Library Branch "Sharpstown"
--HOW DO I TARGET TITLE **AND** BRANCHNAME???
CREATE PROC getBookCopiesAtBranch
AS
BEGIN
	SELECT Number_of_Copies
	FROM tbl_BOOK_COPIES
	INNER JOIN tbl_BOOKS ON tbl_BOOK_COPIES.Book_ID = tbl_BOOKS.Book_ID
	INNER JOIN tbl_LIBRARY_BRANCH ON tbl_LIBRARY_BRANCH.Branch_ID = tbl_BOOK_COPIES.Branch_ID
	WHERE Title = 'The Lost Tribe';
END

--Create query that returns number of copies of "The Lost Tribe" that are owned by each Library Branch
CREATE PROC getBookByBranch
AS
BEGIN
	
END

--Create query that returns number of borrowers who do not have any books checked out

SELECT * FROM tbl_BOOK_AUTHORS
SELECT * FROM tbl_BOOK_COPIES
SELECT * FROM tbl_BOOK_LOANS
SELECT * FROM tbl_BOOKS
SELECT * FROM tbl_BORROWER
SELECT * FROM tbl_LIBRARY_BRANCH
SELECT * FROM tbl_PUBLISHER