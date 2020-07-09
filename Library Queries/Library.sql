CREATE DATABASE LibraryManagement

USE LibraryManagement

CREATE TABLE BookAuthor
(AuthorID   VARCHAR(50) NOT NULL PRIMARY KEY, 
 AuthorName VARCHAR(20) NOT NULL
);

CREATE TABLE BookGenre
(GenreID INT
 PRIMARY KEY IDENTITY, 
 Genre   VARCHAR(20) NOT NULL
);
CREATE TABLE BookLanguage
(LanguageID INT
 PRIMARY KEY IDENTITY, 
 Language   VARCHAR(20) NOT NULL
);
CREATE TABLE Books
(BookID     VARCHAR(10) NOT NULL PRIMARY KEY, 
 BookName   VARCHAR(50) NOT NULL, 
 AuthorID   VARCHAR(50) CONSTRAINT FK_Books_BookAuthor FOREIGN KEY(AuthorID) REFERENCES BookAuthor(AuthorID), 
 GenreID    INT CONSTRAINT FK_Books_BookGenre FOREIGN KEY(GenreID) REFERENCES BookGenre(GenreID), 
 LanguageID INT CONSTRAINT FK_Books_BookLanguage FOREIGN KEY(LanguageID) REFERENCES BookLanguage(LanguageID)
);
CREATE TABLE StudentsLibraryCard
(StudentID      INT NOT NULL PRIMARY KEY, 
 FirstName      VARCHAR(20) NOT NULL, 
 LastName       VARCHAR(20) NOT NULL, 
 Gender         VARCHAR(10) NOT NULL, 
 Email          NVARCHAR(255) NOT NULL, 
 ClassID        INT CONSTRAINT FK_StudentsLibraryCard_Class FOREIGN KEY(ClassID) REFERENCES Class(ClassID), 
 DateCreated    DATE NOT NULL, 
 ExpirationDate DATE NOT NULL,
);
CREATE TABLE Class
(ClassID INT NOT NULL PRIMARY KEY IDENTITY, 
 Class   VARCHAR(20) NOT NULL
);
CREATE TABLE BorrowAndReturn
(TicketID   INT NOT NULL PRIMARY KEY IDENTITY(100, 1), 
 BookID     VARCHAR(10) CONSTRAINT FK_BorrowAndReturn_Books FOREIGN KEY(BookID) REFERENCES Books(BookID), 
 StudentID  INT CONSTRAINT FK_BorrowAndReturn_StudentsLibraryCard FOREIGN KEY(StudentID) REFERENCES StudentsLibraryCard(StudentID), 
 DateBorrow DATE NOT NULL, 
 DateReturn DATE NOT NULL, 
 STATUS     BIT NOT NULL,
);

SELECT * FROM dbo.TableName

Table BookAuthor
AuthorID = TheFirstChacracterOfFirstName + TheFirstChacracterOfMiddleName + TheFirstChacracterOfLastName + 3IntegerNumbers
	EXAMPLE : Brock A Hartman (BAH657) (Author FirstName (B)rock, Author MiddleName (A), Author LastName (H)artman ,XXX)
			  Lilah G Weeks (CJR046) (Author FirstName (L)ilah, Author MiddleName (G), Author LastName (W)eeks ,XXX)

Table Books
BookID = 2VolumeNumbersOfBook + 2NumbersOfPublishingYear + 2FirstNumbersOfAuthorId
	EXAMPLE : Furosemide (011865) (Volume 01, PublishingYear 20(18), AuthorID (65)7)
			  Zolpidem Tartrate Ayaya (021004) (Volume 02, PublishingYear 20(10), AuthorID (04)6)

Table StudentLibraryCard 
StudentID = 6IntegerNumbers 
	EXAMPLE : Nguyen Anh Huy (1221889)
			  Massimo Webland (1323086)