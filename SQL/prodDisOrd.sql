CREATE TABLE products
(	
	pId int PRIMARY KEY IDENTITY(101,1),
	productName varchar(30) NOT NULL,
	price money,
	createdDate date,
	createdBy varchar(20),
	modifiedDate date,
	modifiedBy varchar(20),
	deletedDate date,
	deletedBy varchar(20),
	isDeleted bit,
);

INSERT INTO products
VALUES('Hair Dryer',4512,'2008-11-11','Beast','2018-01-11','Beast','2008-12-11','Zeus',1);
INSERT INTO products
VALUES('Laptop',65512,'1998-11-01','Percy','2001-03-21','Beast','2018-06-18','Xiao',0);
INSERT INTO products
VALUES('Sofa',15123,'2005-05-15','Beast','2018-04-17','Roger','2009-11-10','Zeus',1);
INSERT INTO products
VALUES('Tiles',7541,'1985-02-06','Bot','2005-10-21','Zeus','2015-10-21','Tony',1);
INSERT INTO products
VALUES('Wires',900,'2001-01-01','Junior','2008-06-10','Lalit','2008-03-11','Tony',0);

drop table products

--#########################################################################################################################

CREATE TABLE discount
(
    dId int PRIMARY KEY IDENTITY(201,1),
    pId int FOREIGN KEY REFERENCES products(pId),
    startDate date NOT NULL,
    endDate date NOT NULL,
);

INSERT INTO discount
VALUES(105,'2008-10-21','2015-06-10')
INSERT INTO discount
VALUES(101,'1988-09-11','2013-07-10')
INSERT INTO discount
VALUES(103,'1828-02-13','2017-03-10')
INSERT INTO discount
VALUES(102,'1854-04-15','2015-01-10')
INSERT INTO discount
VALUES(105,'1857-01-18','2019-06-25')

drop table discount
--##########################################################################################################################

CREATE TABLE orders
(
	oId int PRIMARY KEY IDENTITY (1001, 1),
	pId int FOREIGN KEY REFERENCES products(pId),
	orderStatus bit NOT NULL,
	orderDate date NOT NULL,
	requiredDate date NOT NULL,
)

INSERT INTO orders
VALUES(104,1,'2007-09-25','2019-05-15')
INSERT INTO orders
VALUES(101,0,'1952-07-25','2011-12-29')
INSERT INTO orders
VALUES(103,1,'1985-04-25','2013-10-16')
INSERT INTO orders
VALUES(102,0,'1785-02-25','2017-06-11')
INSERT INTO orders
VALUES(103,0,'2017-08-25','2015-06-10')


--########################################################################################################################

CREATE TABLE customers
(
	cId int PRIMARY KEY IDENTITY(2002,1),
	customerName varchar(30),
	oId int FOREIGN KEY REFERENCES orders(oId),
	cartItems int,
)

INSERT INTO customers
VALUES('Pikachu',1003,9)
INSERT INTO customers
VALUES('Vulpix',1001,2)
INSERT INTO customers
VALUES('Manky',1005,9)
INSERT INTO customers
VALUES('Psyduck',1003,1)
INSERT INTO customers
VALUES('Onix',1004,3)


--##########################################################################################################################

CREATE TABLE workers
(
	wId int PRIMARY KEY IDENTITY(301,1),
	oId int FOREIGN KEY REFERENCES orders(oId),
	pId int FOREIGN KEY REFERENCES products(pId),
	workerFname varchar(20),
	workerLname varchar(20),
	workerAddress nvarchar(30),
	city varchar(15),
)

INSERT INTO workers
VALUES(1004,105,'Roger','Federer','33 Elm. Street','Paris')
INSERT INTO workers
VALUES(1001,101,'Micky','James','44 US 110','New York')
INSERT INTO workers
VALUES(1003,103,'Dwayne','Johnson','24 Friends Street','New Delhi')
INSERT INTO workers
VALUES(1002,102,'Dom','Toretto','83 First Street','Howard')
INSERT INTO workers
VALUES(1005,101,'Mark','Tyson','9 Fifth Cross','Washington')

--###################################################################################################################

--REQUIREMENT-To get customer details along with their products and orders and discount
SELECT customerName,productName,price,orderStatus,o.oId, cartItems,startDate,endDate
FROM products p,customers c, orders o, discount d
where (o.oId= c.oId) AND (o.pId=p.pId) AND(p.pId = d.pId)

--Requirement: To get the workers working on the orders 
SELECT o.oId, workerFname, orderDate,requiredDate, city
FROM orders o
INNER JOIN workers w 
ON w.oId = o.oId

--JOIN
SELECT customerName, productName,price,startDate
FROM customers




