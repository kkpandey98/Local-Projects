--Q1. write a query to find the COUNT of all orders placed before year 2020, by customer email address, sorted descending?

CREATE TABLE customers
(
	customer_id int PRIMARY KEY IDENTITY(1,1),
	first_name varchar(20),
	last_name varchar(20),
	email nvarchar(30),
	address varchar(20),
	city varchar(20),
	state varchar(20),
	zip_code int,
	createdDate date,
	createdBy varchar(20),
	modifiedDate date,
	modifiedBy varchar(20),
	deletedDate date,
	deletedBy varchar(20),
	isDeleted bit,
);

INSERT INTO customers
VALUES('Kamal','Pandey','kamal1234@gmail.com','New York Street','Haldwani','Manipur',110021,'2008-11-11','Beast','2018-01-11','Beast','2008-12-11','Zeus',1)
INSERT INTO customers
VALUES('Rohan','Mehra','rohan1234@gmail.com','New Orleans Street','Delhi','Delhi',260021,'1998-11-01','Percy','2001-03-21','Beast','2018-06-18','Xiao',0)
INSERT INTO customers
VALUES('Bipul','Sharma','bipul1234@gmail.com','Sarojini Nagar','Nainital','Uttarakhand',110081,'2003-10-21','Stacy','2016-01-31','Ram','2020-12-11','Aaron',1)
INSERT INTO customers
VALUES('James','Rig','james1234@gmail.com','Palika Bazaar','Jaipur','Rajasthan',240021,'2005-05-15','Beast','2018-04-17','Roger','2019-11-10','Zeus',1)
INSERT INTO customers
VALUES('Chinu','Pogyal','chinu1234@gmail.com','Bhagwaan Street','California','America',150021,'2001-01-01','Junior','2008-06-10','Lalit','2008-09-11','Tony',0)
INSERT INTO customers
VALUES('Santosh','Paliwal','santosh1234@gmail.com','Santonio','Durban','Africa',480021,'1908-05-21','Xiao','2004-07-11','Titu','2008-12-11','Xiaondre',0)
INSERT INTO customers
VALUES('Ginni','Singh','ginni1234@gmail.com','Rajpur Road','Chennai','Kerala',250021,'1985-02-06','Bot','2005-10-21','Zeus','2015-10-21','Tony',1)
INSERT INTO customers
VALUES('Gurkha','Dogra','gurkha1234@gmail.com','Elm. Street','Hong Kong','Hyderabad',190021,'2002-01-01','Singh','2015-11-22','Coolboy','2017-10-05','John',0)
INSERT INTO customers
VALUES('Ajay','Warne','ajay1234@gmail.com','New ohio Street','Haldwani','Assam',780021,'2001-11-11','Kunal','2009-01-11','Jimmy','2018-10-11','shawn',1)
INSERT INTO customers
VALUES('Piyush','Sanwal','piyush1234@gmail.com','New way Street','Haldwani','Manipur',100021,'2001-12-11','Monty','2003-01-11','Singh','2019-12-18','Beast',0)
INSERT INTO customers
VALUES('Anamika','Agarwal','badday1234@gmail.com','Friends Street','New Jersey','South America',900021,'2001-01-11','Varun','2018-09-09','Vishal','2020-12-11','Zeus',0)
INSERT INTO customers
VALUES('Issac','Nutan','issac1234@gmail.com','Fresh Street','Hawai','Brazil',190021,'2002-11-11','Harry','2008-07-21','Beast','2014-12-11','Kunal',1)
INSERT INTO customers
VALUES('Kishan','Lal','Kishan1234@gmail.com','New York Street','Indore','MP',170021,'2001-11-11','Ali','2010-08-11','Arvind','2015-12-11','Hamid',1)
INSERT INTO customers
VALUES('Rajendra','Bhardwaj','rajendra1234@gmail.com','Alone Street','Austria','Australia',130421,'2010-11-11','Kumar','2015-01-11','Ravi','2018-02-01','Lisa',0)
INSERT INTO customers
VALUES('Krida','Linga','krida1234@gmail.com','Undro Street','Lahore','Punjab',188031,'2001-01-11','Bimal','2010-01-11','Angelina','2018-12-11','Danucd',1)
INSERT INTO customers
VALUES('Dongu','Furka','dongu1234@gmail.com','Virginia Street','Hapur','Haryana',940071,'1998-11-11','Kiara','2011-01-31','Jasmine','2019-10-11','Marie',0)
INSERT INTO customers
VALUES('Sighal','Chand','sighal1234@gmail.com','Varidian Street','Moradabad','UP',650041,'1808-11-11','Nicole','1918-01-11','Bridgette','2008-12-11','Tony',1)
INSERT INTO customers
VALUES('Harish','lulia','harish1234@gmail.com','Cellulian Street','Hindon','Nepal',840001,'1908-11-11','Deepu','2001-01-11','Homie','2006-10-11','Deep',0)
INSERT INTO customers
VALUES('Nik','Benz','nik1234@gmail.com','Saffron Street','Sonepat','Haryana',170041,'1803-11-11','Beast','2005-01-11','Beast','2018-12-11','Hasan',0)
INSERT INTO customers
VALUES('Amy','Ann','amy1234@gmail.com','Satton Street','Panipat','Bihar',900001,'2001-10-11','MJ','2010-12-11','Zube','2018-10-21','Azhar',1)
INSERT INTO customers
VALUES('Priya','Rai','priya1234@gmail.com','Silicon Street','Raipur','Jharkhand',180091,'1904-11-11','Mirad','2002-01-11','Ali','2015-12-11','Zayn',0)
INSERT INTO customers
VALUES('Kumar','Vishwas','kumar1234@gmail.com','Newton Street','Patpargang','Gujarat',190001,'1801-12-11','Kuwar','1974-01-11','Brijesh','2000-12-11','Zonty',1)


--#######################################################################################################################

CREATE TABLE orders
(
	order_id int PRIMARY KEY IDENTITY(1,1),
	customer_id int FOREIGN KEY REFERENCES customers(customer_id),
	order_placed_date date,
	email nvarchar(20),
)

INSERT INTO orders
VALUES(7,'1908-03-11','ginni1234@gmail.com')
INSERT INTO orders
VALUES(21,'2008-03-11','priya1234@gmail.com')
INSERT INTO orders
VALUES(7,'2028-03-11','ginni1234@gmail.com')
INSERT INTO orders
VALUES(21,'2005-03-11','priya1234@gmail.com')
INSERT INTO orders
VALUES(1,'2001-03-11','kamal1234@gmail.com')
INSERT INTO orders
VALUES(21,'2018-08-11','priya1234@gmail.com')
INSERT INTO orders
VALUES(1,'2006-03-11','kamal1234@gmail.com')
INSERT INTO orders
VALUES(21,'2023-03-11','priya1234@gmail.com')
INSERT INTO orders
VALUES(1,'2003-03-11','kamal1234@gmail.com')
INSERT INTO orders
VALUES(21,'2010-09-11','priya1234@gmail.com')
INSERT INTO orders
VALUES(11,'2001-03-11','badday1234@gmail.com')
INSERT INTO orders
VALUES(15,'1906-03-11','krida1234@gmail.com')
INSERT INTO orders
VALUES(7,'2006-03-11','ginni1234@gmail.com')
INSERT INTO orders
VALUES(15,'2106-03-11','krida1234@gmail.com')
INSERT INTO orders
VALUES(11,'2026-03-11','badday1234@gmail.com')
INSERT INTO orders
VALUES(6,'2018-03-11','santosh1234@gmail.com')
INSERT INTO orders
VALUES(7,'2026-03-11','ginni1234@gmail.com')
INSERT INTO orders
VALUES(3,'2016-03-11','bipul1234@gmail.com')
INSERT INTO orders
VALUES(2,'2016-03-31','rohan1234@gmail.com')
INSERT INTO orders
VALUES(10,'2026-03-11','piyush1234@gmail.com')

--######################################     QUERY    #####################################################################

SELECT COUNT(email)AS email_count,email
FROM orders 
WHERE order_placed_date < '2020-01-01' 
GROUP BY email
order by email_count DESC

--##################################################################################################################

--##################################################################################################################

--Q2. Write a query to find all the employees whose salaries are greater than the average salary of all employees.

CREATE TABLE employees
(
	employee_id int PRIMARY KEY IDENTITY(1,1),
	first_name varchar(30),
	last_name varchar(30),
	email nvarchar(30),
	salary numeric,
	manager_Id int ,
	department_Id int ,
	address varchar(30),
	city varchar(30),
	state varchar(30),
	zip_code int,
	createdDate date,
	createdBy varchar(20),
	modifiedDate date,
	modifiedBy varchar(20),
	deletedDate date,
	deletedBy varchar(20),
	isDeleted bit,
);

INSERT INTO employees
VALUES('Kamal','Pandey','kamal1234@gmail.com',458522,201,201,'New York Street','Haldwani','Manipur',110021,'2008-11-11','Beast','2018-01-11','Beast','2008-12-11','Zeus',1)
INSERT INTO employees
VALUES('Rohan','Mehra','rohan1234@gmail.com',857412,202,202,'New Orleans Street','Delhi','Delhi',260021,'1998-11-01','Percy','2001-03-21','Beast','2018-06-18','Xiao',0)
INSERT INTO employees
VALUES('Bipul','Sharma','bipul1234@gmail.com',813487,203,203,'Sarojini Nagar','Nainital','Uttarakhand',110081,'2003-10-21','Stacy','2016-01-31','Ram','2020-12-11','Aaron',1)
INSERT INTO employees
VALUES('James','Rig','james1234@gmail.com',874520,204,204,'Palika Bazaar','Jaipur','Rajasthan',240021,'2005-05-15','Beast','2018-04-17','Roger','2019-11-10','Zeus',1)
INSERT INTO employees
VALUES('Chinu','Pogyal','chinu1234@gmail.com',743658,205,205,'Bhagwaan Street','California','America',150021,'2001-01-01','Junior','2008-06-10','Lalit','2008-09-11','Tony',0)
INSERT INTO employees
VALUES('Santosh','Paliwal','santosh1234@gmail.com',743598,206,206,'Santonio','Durban','Africa',480021,'1908-05-21','Xiao','2004-07-11','Titu','2008-12-11','Xiaondre',0)
INSERT INTO employees
VALUES('Ginni','Singh','ginni1234@gmail.com',743159,207,207,'Rajpur Road','Chennai','Kerala',250021,'1985-02-06','Bot','2005-10-21','Zeus','2015-10-21','Tony',1)
INSERT INTO employees
VALUES('Gurkha','Dogra','gurkha1234@gmail.com',371968,208,208,'Elm. Street','Hong Kong','Hyderabad',190021,'2002-01-01','Singh','2015-11-22','Coolboy','2017-10-05','John',0)
INSERT INTO employees
VALUES('Ajay','Warne','ajay1234@gmail.com',654789,209,209,'New ohio Street','Haldwani','Assam',780021,'2001-11-11','Kunal','2009-01-11','Jimmy','2018-10-11','shawn',1)
INSERT INTO employees
VALUES('Piyush','Sanwal','piyush1234@gmail.com',324697,210,210,'New way Street','Haldwani','Manipur',100021,'2001-12-11','Monty','2003-01-11','Singh','2019-12-18','Beast',0)
INSERT INTO employees
VALUES('Anamika','Agarwal','badday1234@gmail.com',741369,211,211,'Friends Street','New Jersey','South America',900021,'2001-01-11','Varun','2018-09-09','Vishal','2020-12-11','Zeus',0)
INSERT INTO employees
VALUES('Issac','Nutan','issac1234@gmail.com',734561,212,212,'Fresh Street','Hawai','Brazil',190021,'2002-11-11','Harry','2008-07-21','Beast','2014-12-11','Kunal',1)
INSERT INTO employees
VALUES('Kishan','Lal','Kishan1234@gmail.com',741365,213,213,'New York Street','Indore','MP',170021,'2001-11-11','Ali','2010-08-11','Arvind','2015-12-11','Hamid',1)
INSERT INTO employees
VALUES('Rajendra','Bhardwaj','rajendra1234@gmail.com',147474,214,214,'Alone Street','Austria','Australia',130421,'2010-11-11','Kumar','2015-01-11','Ravi','2018-02-01','Lisa',0)
INSERT INTO employees
VALUES('Krida','Linga','krida1234@gmail.com',696985,215,215,'Undro Street','Lahore','Punjab',188031,'2001-01-11','Bimal','2010-01-11','Angelina','2018-12-11','Danucd',1)
INSERT INTO employees
VALUES('Dongu','Furka','dongu1234@gmail.com',454654,216,216,'Virginia Street','Hapur','Haryana',940071,'1998-11-11','Kiara','2011-01-31','Jasmine','2019-10-11','Marie',0)
INSERT INTO employees
VALUES('Sighal','Chand','sighal1234@gmail.com',968574,217,217,'Varidian Street','Moradabad','UP',650041,'1808-11-11','Nicole','1918-01-11','Bridgette','2008-12-11','Tony',1)
INSERT INTO employees
VALUES('Harish','lulia','harish1234@gmail.com',457896,218,218,'Cellulian Street','Hindon','Nepal',840001,'1908-11-11','Deepu','2001-01-11','Homie','2006-10-11','Deep',0)
INSERT INTO employees
VALUES('Nik','Benz','nik1234@gmail.com',968578,219,219,'Saffron Street','Sonepat','Haryana',170041,'1803-11-11','Beast','2005-01-11','Beast','2018-12-11','Hasan',0)
INSERT INTO employees
VALUES('Amy','Ann','amy1234@gmail.com',693214,220,220,'Satton Street','Panipat','Bihar',900001,'2001-10-11','MJ','2010-12-11','Zube','2018-10-21','Azhar',1)
INSERT INTO employees
VALUES('Priya','Rai','priya1234@gmail.com',326541,221,221,'Silicon Street','Raipur','Jharkhand',180091,'1904-11-11','Mirad','2002-01-11','Ali','2015-12-11','Zayn',0)
INSERT INTO employees
VALUES('Kumar','Vishwas','kumar1234@gmail.com',123654,222,222,'Newton Street','Patpargang','Gujarat',190001,'1801-12-11','Kuwar','1974-01-11','Brijesh','2000-12-11','Zonty',1)

--#############################################################################################################################

CREATE TABLE department
(
	Department_id int PRIMARY KEY IDENTITY(1,1),
	department_Name varchar(30),
)

INSERT INTO department
VALUES( 'Manager' )
INSERT INTO department
VALUES( 'Senior Manager' )
INSERT INTO department
VALUES( 'BD' )
INSERT INTO department
VALUES( 'Chairman' )
INSERT INTO department
VALUES( 'Assistant Manager' )
INSERT INTO department
VALUES( 'Team Leader' )
INSERT INTO department
VALUES( 'CEO' )
INSERT INTO department
VALUES( 'Associate' )
INSERT INTO department
VALUES( 'Manager' )
INSERT INTO department
VALUES( 'Team Leader' )
INSERT INTO department
VALUES( 'Manager' )
INSERT INTO department
VALUES( 'Senior VP' )
INSERT INTO department
VALUES( 'Senior Associate' )
INSERT INTO department
VALUES( 'sDirect' )
INSERT INTO department
VALUES( 'Senior Manager' )
INSERT INTO department
VALUES( 'Associate' )
INSERT INTO department
VALUES( 'sDirect' )
INSERT INTO department
VALUES( 'Team Leader' )
INSERT INTO department
VALUES( 'Manager' )
INSERT INTO department
VALUES( 'Senior VP' )


--######################################################### QUERY ###############################################################

SELECT "first_name"+"last_name" AS Employees
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)
ORDER BY Employees