SELECT TOP (1000) [RegNo]
      ,[FirstName]
      ,[LastName]
      ,[GPA]
      ,[Contact]
  FROM [Student_Details].[dbo].[Student];

  SELECT [RegNo]
  FROM [Student_Details].[dbo].[Student];

  SELECT [GPA]
  FROM [Student_Details].[dbo].[Student] where GPA>3.5;

 SELECT [GPA]
  FROM [Student_Details].[dbo].[Student] where GPA<=3.5;

 SELECT [GPA]
  FROM [Student_Details].[dbo].[Student] where GPA<=3.5 or GPA>3.5;

  select  (FirstName+LastName)
  From  [Student_Details].[dbo].[Student];



