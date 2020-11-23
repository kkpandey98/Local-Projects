--#########################  table creation
create table Person  
(  
    PersonID nvarchar(5)primary key not null,  
    FirstName nvarchar(10)not null,  
    Company nvarchar(15)  
)  
create table PersonDetails  
(  
    PersonID nvarchar(5)FOREIGN KEY REFERENCES dbo.Person(PersonID),  
    Address nvarchar(30)  
)

Insert into Person  
values('Vidvr','Vidya Vrat','Lionbridge Inc'),  
('Rupag','Rupali','Pearl Solutions') 

Insert into PersonDetails  
values('Vidvr','Bellevue WA 98007'),  
('Rupag','Bellevue WA 98007')


--############################  Procedure
create procedure sp_Trans_Test  
@newpersonid nvarchar(5),  
@newfirstname nvarchar(10),  
@newcompanyname nvarchar(15),  
@oldpersonid nvarchar(5)  
as  
declare @inserr int  
declare @delerr int  
declare @maxerr int  
set @maxerr = 0  
BEGIN TRANSACTION  
  
-- Add a person  
insert into person (personid, firstname, company)  
values(@newpersonid, @newfirstname, @newcompanyname)  
  
-- Save error number returned from Insert statement  
set @inserr = @@error  
if @inserr > @maxerr  
set @maxerr = @inserr  
  
-- Delete a person  
delete from person  
where personid = @oldpersonid  
  
-- Save error number returned from Delete statement  
set @delerr = @@error  
if @delerr > @maxerr  
set @maxerr = @delerr  
  
-- If an error occurred, roll back  
if @maxerr <> 0  
begin  
ROLLBACK  
print 'Transaction rolled back'  
end  
else  
begin  
COMMIT  
print 'Transaction committed'  
end  
print 'INSERT error number:'+ cast(@inserr as nvarchar(8))  
print 'DELETE error number:'+ cast(@delerr as nvarchar(8))  
return @maxerr


--everything pass
EXEC sp_Trans_Test 'Spark', 'Arshika ', null, 'Agarw' 

--insert fail
exec sp_Trans_Test 'Pearl', 'Vamika', null, 'Spark'  

--delete fail
exec sp_Trans_Test 'ag', 'Agarwal ', null, 'Vidvr' 

--both fail
exec sp_Trans_Test 'Pearl', 'Vamika', null,'Rupag'  