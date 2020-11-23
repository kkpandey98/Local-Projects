CREATE TABLE student1
(
	stuId int Identity(1,1),
	sName varchar(20),
	sAge int,
	sGender varchar(6)
)

DECLARE @counter int =1

while(@counter<=10000)
BEGIN

INSERT INTO student1
VALUES('student'+CONVERT(varchar,@counter),25+@counter,'Fifth')
SET @counter=@counter+1

END


--index non-clustered
CREATE INDEX ix_stuId 
ON student1(stuId)

--index clustered
CREATE CLUSTERED INDEX ix_stuId 
ON student1(stuId)

--displaying details using where clause
SELECT * FROM student1 where stuId = 8888

drop TABLE STUDENT1	

DROP index ix_stuID ON student1

--#######################################################################################################################################################

CREATE TABLE student2
(
	stuId int Identity(1,1),
	sName varchar(20),
	sAge int,
	class varchar(10)
)

DECLARE @counter int =1

while(@counter<=10000)
BEGIN

INSERT INTO student2
VALUES('student'+CONVERT(varchar,@counter),25+@counter,'Fifth')
SET @counter=@counter+1

END

--displaying details using where clause
SELECT * FROM student1 where stuId = 8888

drop TABLE STUDENT2

--###########################################################################################################
SELECT STUFF((SELECT ','+ sName FROM student1
	FOR XML PATH(")),1,1,") AS ALLNAME