Select  Requireddate, ShippedDate
From  Orders
Where  ShippedDate > RequiredDate ;

Select Distinct Country 
From Employees ;

Select *  
From Employees  
Where ReportsTo is NULL;

Select ProductName
From Products
Where Discontinued = 1;

Select OrderID
From OrderDetails
Where Discount = 0 ;

Select CustomerID,Region
From Customers
Where Region is Null;

Select  ContactName,Country 
From Customers
Where Country =  'UK' or Country = 'USA';

Select  CompanyName,HomePage
From Suppliers
Where Homepage is not NULL;

Select  CustomerID,OrderDate
From Orders
Where OrderDate=  '1997';

Select CustomerID, ShippedDate
From Orders
Where ShippedDate is NULL
