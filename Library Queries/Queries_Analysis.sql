USE LibraryManagement

--in BookiD sach dc doc nhieu nhat

SELECT TOP 4 bar.BookID, 
             COUNT(bar.TicketID) AS "Amount", 
             b.BookName AS BookName
FROM BorrowAndReturn AS bar
     INNER JOIN Books b ON bar.BookID = b.BookID
GROUP BY bar.BookID, 
         b.BookName
ORDER BY Amount DESC;

--in BookiD 5 sach duoc it doc nhat
SELECT bar.BookID, 
       COUNT(bar.TicketID) AS "Amount", 
       b.BookName AS BookName
FROM BorrowAndReturn AS bar
     INNER JOIN Books b ON bar.BookID = b.BookID
GROUP BY bar.BookID, 
         b.BookName
ORDER BY Amount ASC;

--HOC SINH DOC NHIEU SACH NHAT
SELECT bar.StudentID, 
       COUNT(bar.TicketID) AS "Amount", 
       slc.FirstName + ' ' + slc.LastName AS FullName
FROM BorrowAndReturn AS bar
     INNER JOIN StudentsLibraryCard slc ON bar.StudentID = slc.StudentID
GROUP BY bar.StudentID, 
         slc.FirstName + ' ' + slc.LastName
ORDER BY Amount DESC;

--HOC SINH DOC IT SACH NHAT
SELECT bar.StudentID, 
       COUNT(bar.TicketID) AS "Amount", 
       slc.FirstName + ' ' + slc.LastName AS FullName
FROM BorrowAndReturn AS bar
     INNER JOIN StudentsLibraryCard slc ON bar.StudentID = slc.StudentID
GROUP BY bar.StudentID, 
         slc.FirstName + ' ' + slc.LastName
ORDER BY Amount ASC;

--Book Genre Are Borrow the most
SELECT TOP 1 COUNT(bar.TicketID) AS 'Amount', 
             b.GenreID, 
             bg.Genre
FROM dbo.BorrowAndReturn bar
     INNER JOIN dbo.Books b ON bar.BookID = b.BookID
     INNER JOIN dbo.BookGenre bg ON b.GenreID = bg.GenreID
GROUP BY b.GenreID, 
         bg.Genre
ORDER BY COUNT(bar.TicketID) DESC;

--Author Are Borrow the Most
SELECT TOP 1 COUNT(bar.TicketID) AS 'Amount', 
             b.AuthorID, 
             ba.AuthorName
FROM dbo.BorrowAndReturn bar
     INNER JOIN dbo.Books b ON bar.BookID = b.BookID
     INNER JOIN dbo.BookAuthor ba ON b.AuthorID = ba.AuthorID
GROUP BY b.AuthorID, 
         ba.AuthorName
ORDER BY COUNT(bar.TicketID) DESC;

--Student Who not returned the book
SELECT bar.StudentID, 
       slc.FirstName + ' ' + slc.LastName AS FullName, 
       bar.STATUS, 
       bar.DateBorrow, 
       bar.DateReturn
FROM dbo.BorrowAndReturn AS bar
     INNER JOIN dbo.StudentsLibraryCard slc ON bar.StudentID = slc.StudentID
WHERE STATUS = 0;
