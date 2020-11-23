CREATE PROCEDURE updating
AS 
BEGIN

CREATE TABLE goods
(
	gid int PRIMARY KEY ,
	gname varchar(20),
	price money
)

INSERT INTO goods
VALUES(1,'Electronics',4000)
INSERT INTO goods
VALUES(2,'Apparels',500)
INSERT INTO goods
VALUES(3,'Home decor',600)
INSERT INTO goods
VALUES(4,'Accessories',200)


CREATE TABLE updatedgoods
(   
	gid int FOREIGN KEY REFERENCES goods(gid) ,
	gname varchar(20),
	price money
)

INSERT INTO updatedgoods
VALUES(1,'Electronics',4500)
INSERT INTO updatedgoods
VALUES(2,'Apparels',5500)
INSERT INTO updatedgoods
VALUES(3,'Home decor',700)
INSERT INTO updatedgoods
VALUES(4,'Accessories',400)


--INSERT INTO goods
--VALUES( SELECT gid,gname,price FROM updatedgoods  WHERE gid NOT IN(SELECT gid FROM goods) )

-----query to update table(goods) price with table(updatedgoods) price-----
UPDATE goods 
SET goods.price = updatedgoods.price
FROM goods  
INNER JOIN updatedgoods 
ON goods.gid = updatedgoods .gid;

END

EXEC updating;

SELECT * FROM goods
SELECT * FROM updatedgoods

-----query to update table(goods) price with table(updatedgoods) price-----
UPDATE goods 
SET goods.price = updatedgoods.price
FROM goods  
INNER JOIN updatedgoods 
ON goods.gid = updatedgoods .gid;

--- drop table
drop table updatedgoods
drop table goods


CREATE TABLE swap
(
	fname varchar(20),
	lname varchar(20),
	num1 int,
	num2 int
)
INSERT INTO swap
VALUES('Hanna','Montana',1,4)
INSERT INTO swap
VALUES('Ariana','Grande',2,5)
INSERT INTO swap
VALUES('Charlie','Puth',3,6)

---- swap values from goods table to updatedgoods table
UPDATE swap
set fname=lname, lname = fname

UPDATE swap
set num1=num2, num2 = num1

drop table swap

select * from swap