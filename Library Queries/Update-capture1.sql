USE LibraryManagement

SELECT 

DELETE FROM dbo.TableName
WHERE dbo.TableName.ObjectId = VALUE

DELETE FROM dbo.StudentsLibraryCard 
WHERE dbo.StudentsLibraryCard.StudentID = 1000002

SELECT slc.* FROM dbo.StudentsLibraryCard slc
ORDER BY slc.StudentID ASC

UPDATE StudentsLibraryCard 
SET Email = 'ayayaya@gmail.com'
WHERE StudentID = 1000001


UPDATE TableName
SET FieldNeedTOUPDATE = 'VALUE'
WHERE IdObject = VALUE