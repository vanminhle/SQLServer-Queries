SELECT slc.* FROM dbo.StudentsLibraryCard slc
ORDER BY slc.StudentID ASC

INSERT INTO StudentsLibraryCard (StudentID, FirstName, LastName, Gender, Email , ClassID, DateCreated , ExpirationDate)
VALUES (1000001, 'Nguyen', 'Anh Huy', 'Male', 'anhuy@microsoft.com', 21, '2/20/2020', '10/20/2020');
INSERT INTO StudentsLibraryCard (StudentID, FirstName, LastName, Gender, Email , ClassID, DateCreated , ExpirationDate)
VALUES (-4124214, 'anhuy@microsoft.com', 'Anh Huy', 'Male', 'anhuy@microsoft.com', 21, '21020','10/20/2020');
INSERT INTO StudentsLibraryCard (StudentID, FirstName, LastName, Gender, Email , ClassID, DateCreated , ExpirationDate)
VALUES (1000002, 'Nguyen', 'Nhat Anh', 'Female', 'anhnh2001@gmail.com', 21, '2/20/2020', '10/20/2020');
INSERT INTO StudentsLibraryCard (StudentID, FirstName, LastName, Gender, Email , ClassID, DateCreated , ExpirationDate)
VALUES (1000003, 'Thai', 'Hoang Linh', 'Female', 'hoanglinhGCD@fpt.edu.vn', 21, '2/20/2020', '10/20/2020');
INSERT INTO StudentsLibraryCard (StudentID, FirstName, LastName, Gender, Email , ClassID, DateCreated , ExpirationDate)
VALUES (1000004, 'Le', 'Thien Vu', 'Male', 'sweicracker_123@gmail.com', 21, '2/20/2020', '10/20/2020');

--

SELECT c.* FROM dbo.Class c
ORDER BY c.Class ASC

INSERT INTO Class([CLASS]) VALUES('GCD1999');
INSERT INTO Class([CLASS]) VALUES('GCD2000');
INSERT INTO Class([CLASS]) VALUES('GCD2001');
INSERT INTO Class([CLASS]) VALUES('GCD2002');

--

INSERT INTO BookAuthor([AuthorID],[AuthorName]) VALUES('ABC001','Alesis B Carla');
INSERT INTO BookAuthor([AuthorID],[AuthorName]) VALUES('ABC002','Alex B Carim');
INSERT INTO BookAuthor([AuthorID],[AuthorName]) VALUES('ABC003','Alex B Cazey');
INSERT INTO BookAuthor([AuthorID],[AuthorName]) VALUES('ABC004','Athur B Cherry');

SELECT ba.* FROM dbo.BookAuthor ba
ORDER BY ba.AuthorID ASC

--

INSERT INTO BookGenre (Genre) values ('Children');
INSERT INTO BookGenre (Genre) values ('Cooking');
INSERT INTO BookGenre (Genre) values ('Dictionary');
INSERT INTO BookGenre (Genre) values ('Languages');

SELECT bg.* FROM dbo.BookGenre bg
ORDER BY bg.GenreID DESC

--

INSERT INTO BookLanguage (Language) values ('Russian');
INSERT INTO BookLanguage (Language) values ('Italiano');


SELECT bl.* FROM dbo.BookLanguage bl
ORDER BY bl.LanguageID DESC

--

INSERT INTO Books([BookID],[BookName],[AuthorID],[GenreID],[LanguageID]) 
VALUES('100001','Glipizifasde','ABC001',21,6);
INSERT INTO Books([BookID],[BookName],[AuthorID],[GenreID],[LanguageID]) 
VALUES('100002','Loovastatinz','ABC002',22,7);
INSERT INTO Books([BookID],[BookName],[AuthorID],[GenreID],[LanguageID]) 
VALUES('100003','Clonazepamiz','ABC003',23,8);
INSERT INTO Books([BookID],[BookName],[AuthorID],[GenreID],[LanguageID]) 
VALUES('100004','Alprazolamiz','ABC004',24,9);

SELECT b.* FROM dbo.Books b
ORDER BY b.BookID ASC

--

INSERT INTO BorrowAndReturn([BookID],[StudentID],[DateBorrow],[DateReturn],[Status]) 
VALUES('100001',1000001,'06/10/2020','06/24/2020',0);
INSERT INTO BorrowAndReturn([BookID],[StudentID],[DateBorrow],[DateReturn],[Status]) 
VALUES('100002',1000002,'06/20/2020','06/25/2020',1);

SELECT bar.* FROM dbo.BorrowAndReturn bar
ORDER BY bar.TicketID DESC

--

UPDATE StudentsLibraryCard 
SET Email = 'anhhuy2002@gmail.com'
WHERE StudentID = 182950
