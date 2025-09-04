SELECT TOP (1000) [EmployeeID]
      ,[LastName]
      ,[FirstName]
      ,[Title]
      ,[TitleOfCourtesy]
      ,[BirthDate]
      ,[HireDate]
      ,[Address]
      ,[City]
      ,[Region]
      ,[PostalCode]
      ,[Country]
      ,[HomePhone]
      ,[Extension]
      ,[Photo]
      ,[Notes]
      ,[ReportsTo]
      ,[PhotoPath]
  FROM [Northwind].[dbo].[Employees]

  select * from Employees where City='London';
  select * from Employees where City<>'London';
  select * from Employees where Extension<3000;
  select * from Employees where Extension>3000;
  select * from Employees where Extension<=3355;
  select * from Employees where Extension>=3355;
  select * from Employees where Region IS NULL;
	select * from Employees where Extension Between 3355 and 5000;
	 select * from Employees where EmployeeID IN (1,3);
	  select * from Employees where Extension like'3355';
	   select * from Employees where not Extension='3355';
	    select * from Employees where Country = 'UK' or Country='USA';
 select * from Employees where Country = 'UK' and Country='USA';

 select * from Employees   Order by EmployeeID asc;
 select * from Employees   Order by Extension desc;
 select * from Employees   Order by EmployeeID,Extension;

