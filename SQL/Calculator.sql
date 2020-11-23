--############################################## Function Creation #####################################################################33
CREATE FUNCTION operation(
 @num1 float,
 @num2 float,
 @operator varchar(2)
 )
 RETURNS float
 AS
 BEGIN

 Declare @result float
 if(@operator = '+')
 SELECT @result = @num1 +@num2

 else if(@operator = '-')
 SELECT @result = @num1 - @num2

 else if(@operator = '*')
 SELECT @result = @num1 * @num2

 else if(@operator = '/')
 SELECT @result = @num1 / @num2

 RETURN @result

 END

 --############################## CREATING & CALLING FUNCTION ###################################################

CREATE PROCEDURE calculate(@num1 float,@num2 float,@operator varchar(2))
AS
BEGIN
SELECT [dbo].[operation](@num1, @num2,@operator) as Result
END

--################################### EXECUTING PROCEDURE #######################################################

EXEC calculate @num1=10, @num2=5.5, @operator= '+'

EXEC calculate @num1=25.6, @num2=5.6, @operator= '-'

EXEC calculate @num1=5.5, @num2=5.5, @operator= '*'

EXEC calculate @num1=3.9, @num2=3.3, @operator= '/'