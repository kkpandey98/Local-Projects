CREATE TABLE employee
(
	empId int PRIMARY KEY Identity(101,1),
	empFname varchar(20),
	empLname varchar(20),
	createdDate date,
	createdBy varchar(20),
	modifiedDate date,
	modifiedBy varchar(20),
	deletedDate date,
	deletedBy varchar(20),
	isDeleted bit,
	gender char(12),
	phoneNo numeric,
	salary money,
	place varchar(20)
);

INSERT INTO employee
VALUES('Ramesh','Singh','2008-11-11','Beast','2018-01-11','Beast','2008-12-11','Zeus',1,'Male',9968574123,465623,'Delhi');
INSERT INTO employee
VALUES('Suresh','Chauhan','1998-11-01','Percy','2001-03-21','Beast','2018-06-18','Xiao',0,'Male',9654566123,467153,'Noida');
INSERT INTO employee
VALUES('Chandu','Sinha','2003-10-21','Stacy','2016-01-31','Ram','2008-12-11','Aaron',1,'Female',6985124123,136723,'Jaipur');
INSERT INTO employee
VALUES('Raj','Pandey','2005-05-15','Beast','2018-04-17','Roger','2009-11-10','Zeus',1,'Male',9968574123,465623,'Delhi');
INSERT INTO employee
VALUES('Mukul','Tomar','2001-01-01','Junior','2008-06-10','Lalit','2008-03-11','Tony',0,'Other',7668574123,46712,'Agra');
INSERT INTO employee
VALUES('Raka','Bush','1908-05-21','Xiao','2004-07-11','Titu','2008-12-11','Xiaondre',0,'Female',4512874123,471583,'Silicon');
INSERT INTO employee
VALUES('Shikhar','Kumar','1985-02-06','Bot','2005-10-21','Zeus','2015-10-21','Tony',1,'Female',7158426123,785623,'Pune');
INSERT INTO employee
VALUES('Mangal','Chuyal','2002-01-01','Singh','2019-11-22','Coolboy','2003-10-05','John',0,'Other',5135475223,45223,'New York');

SELECT * 
FROM employee

--#############################################################################################################################################

CREATE TABLE department
(
	deptId int PRIMARY KEY Identity(1001,1),
	deptName varchar(15),
	empId int FOREIGN KEY REFERENCES employee(empId),
	remotely bit ,
	deptHelpdeskNo numeric,
);

INSERT INTO department
VALUES('HR',103,1,3241569875);
INSERT INTO department
VALUES('Developer',106,1,6598741256);
INSERT INTO department
VALUES('Marketing',105,1,1025046038);
INSERT INTO department
VALUES('Manager',102,0,7050809065);
INSERT INTO department
VALUES('Chairman',105,0,7777778888);
INSERT INTO department
VALUES('Manager',104,1,7050809065);
INSERT INTO department
VALUES('Clerk',103,0,1111111112);
INSERT INTO department
VALUES('Manager',105,1,7050809065);

SELECT * 
FROM department
--#############################################################################################################################################

CREATE TABLE mapping
(
	mapId int PRIMARY KEY Identity(10001,1),
	empId int FOREIGN KEY REFERENCES employee(empID),
	deptId int FOREIGN KEY REFERENCES department(deptId),
	branchName varchar(20) NOT NULL, 
)

INSERT INTO mapping
VALUES(102,1005,'Dehradun');
INSERT INTO mapping
VALUES(104,1004,'Nagpur');
INSERT INTO mapping
VALUES(107,1006,'Mohali');
INSERT INTO mapping
VALUES(105,1008,'Gurgaon');
INSERT INTO mapping
VALUES(101,1002,'Chennai');
INSERT INTO mapping
VALUES(102,1006,'Nagpur');
INSERT INTO mapping
VALUES(106,1005,'Dehradun');
INSERT INTO mapping
VALUES(101,1005,'Noida');
INSERT INTO mapping
VALUES(105,1004,'Mohali');

SELECT *
FROM mapping

--############################################## queries #####################################################################################

--INNER JOIN
SELECT empFname, empLname, deptName
FROM employee e
INNER JOIN department d
ON e.empId = d.empId
INNER JOIN mapping m
ON e.empId = m.empId

--ALTERNATE OF INNER JOIN
SELECT empFname, empLname, deptName
FROM employee e ,department d
WHERE e.empId = d.empId;

--LEFT JOIN
SELECT e.empId,empFname, empLname, deptName
FROM employee e
LEFT JOIN department d
ON e.empId = d.empId;

--RIGHT JOIN
SELECT e.empId,empFname, empLname, deptName
FROM employee e
RIGHT JOIN department d
ON e.empId = d.empId
ORDER BY EMPID;

--FULL OUTER JOIN(SAME DATA AS OF LEFT JOIN)
SELECT e.empId,empFname, empLname, deptName
FROM employee e
FULL JOIN department d
ON e.empId = d.empId
ORDER BY EMPID;

--SELF JOIN(getting full data of the table...What's the use?)
SELECT e1.empFname, e2.empLname,e1.createdBy
FROM employee e1, employee e2
WHERE e1.empId=e2.empId
 

SELECT * 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_TYPE='BASE TABLE'




