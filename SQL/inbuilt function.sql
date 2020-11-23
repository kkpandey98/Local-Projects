--################################ in-built functions ###############################################
--get current date 
SELECT getdate() AS curr

--returns a specified part of a date || DATEPART(interval, date)
SELECT DATEPART(year, '2017-08-25') AS DatePartInt;

--returns the difference between two dates || DATEDIFF(interval, date1, date2)
SELECT DATEDIFF(year, '2015/08/25', '2015/08/25') AS DateDiff;

--adds a time/date interval to a date and then returns the date || DATEADD(interval, number, date)
SELECT DATEADD(day, 5, '2017/08/25') AS DateAdd;

--removes leading spaces from a string || LTRIM(string)
SELECT LTRIM('     LTRIM WORKING') AS LeftTrimmedString;

--removes trailing spaces from a string || RTRIM(string)
SELECT RTRIM('RTRIM WORKING          ') AS RightTrimmedString;

--returns the length of a string || LEN(string)
SELECT LEN('len function working');

--returns the position of a pattern in a string(pattern found returns 0) || PATINDEX(%pattern%, string)
SELECT PATINDEX('%W3s%', 'W3Schools.com') AS indexx;

--adds two or more strings together || CONCAT(string1, string2, ...., string_n)
SELECT CONCAT('Guten',' ', 'Tag') AS concatenation;

--converts a value (of any type) into a specified datatype || CONVERT(data_type(length), expression, style)
SELECT CONVERT(int, 78.45) AS intVal;

--converts a value (of any type) into a specified datatype || CAST(expression AS datatype(length))
SELECT CAST(25.65 AS int) AS intVal;

--converts string data type to target data type(Date or Numeric) || TRY_PARSE (string_value AS data_type [ USING culture ])	
SELECT TRY_PARSE('13/09/2015' AS DATE USING 'Fr-FR') AS newDate;

--converts value to specified data type and if conversion fails it returns NULL || TRY_CONVERT ( data_type [ ( length ) ], expression [, style ])
SELECT TRY_CONVERT(INT, '123456');
SELECT TRY_CONVERT(DATETIME, '2004/5/15', 111);

--returns the item from a list of items at a specified index || CHOOSE ( index, elem_1, elem_2 [, elem_n ] )
SELECT CHOOSE(2, 'First', 2, 'Third') AS Result;

--returns a value if a condition is TRUE, or another value if a condition is FALSE || IIF(condition, value_if_true, value_if_false)
SELECT IIF(500<1000, 'YES', 'NO');

--returns NULL if two expressions are equal, otherwise it returns the first expression || NULLIF(expr1, expr2)
SELECT NULLIF('Match', 'match');

--returns a specified value if the expression is NULL || ISNULL(expression, value)
SELECT ISNULL(null, 'W3Schools.com');

SELECT GETDATE()
SELECT GETUTCDATE()
SELECT DATEADD(MINUTE,330,GETUTCDATE())