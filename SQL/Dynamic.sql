--######################################## Query to find tuple on the searched empId ################################
ALTER PROCEDURE dquery(
@table NVARCHAR(128),
@cond NVARCHAR(30)
)
AS
BEGIN

DECLARE @sql NVARCHAR(MAX)

SET @sql = N'SELECT * FROM ' + @table+ N' WHERE ' + @cond
print @sql
EXEC sp_executesql @sql;

END

EXEC dquery 'employee','empId = 107'

drop procedure dquery

--################################## Procedure to insert & deletion(after insertion) ########################

CREATE PROCEDURE dinsertdelete
AS
BEGIN


--INSERTING VALUES
INSERT INTO employee
VALUES('Ramesh','Singh','2008-11-11','Beast','2018-01-11','Beast','2008-12-11','Zeus',1,'Male',9968574123,465623,'Delhi');
INSERT INTO employee
VALUES('Suresh','Chauhan','1998-11-01','Percy','2001-03-21','Beast','2018-06-18','Xiao',0,'Male',9654566123,467153,'Noida');
INSERT INTO employee
VALUES('Chandu','Sinha','2003-10-21','Stacy','2016-01-31','Ram','2008-12-11','Aaron',1,'Female',6985124123,136723,'Jaipur');
INSERT INTO employee
VALUES('Raj','Pandey','2005-05-15','Beast','2018-04-17','Roger','2009-11-10','Zeus',1,'Male',9968574123,465623,'Delhi');


--Deletion
Delete

END

