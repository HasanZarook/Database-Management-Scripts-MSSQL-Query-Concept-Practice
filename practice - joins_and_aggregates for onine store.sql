--select dbo.Orders.CustomerID,dbo.Customers.ContactName 
--from dbo.Orders
--left join dbo.Customers
--on dbo.Orders.CustomerID = dbo.Customers.CustomerID
--where DATEDIFF(day,dbo.Orders.RequiredDate,dbo.Orders.ShippedDate)>=0;

--select dbo.Products.ProductName,dbo.Suppliers.CompanyName
--from dbo.Products
--full join dbo.Suppliers
--on dbo.Products.SupplierID=dbo.Suppliers.SupplierID;

--select dbo.OrderDetails.ProductID,dbo.Products.ProductName,dbo.OrderDetails.Quantity
--from Orders
--left join OrderDetails
--on dbo.Orders.OrderID=dbo.OrderDetails.OrderID
--left join Products
--on dbo.OrderDetails.ProductID=dbo.Products.ProductID
--where DATEDIFF(year,dbo.Orders.OrderDate,'1998-01-01')=0
--order by Quantity DESC;
 
--select Employees.FirstName+' '+Employees.LastName AS EmployeeName, Man.FirstName+' '+Man.LastName AS ManagerName
--from Employees 
--left join Employees AS Man 
--on Employees.ReportsTo = Man.EmployeeID;

--select Employees.FirstName+' '+Employees.LastName AS ManagerName
--from Employees
--left join Employees AS Emp 
--on Employees.EmployeeID = Emp.ReportsTo
--group by  Employees.FirstName+' '+Employees.LastName
--having COUNT(Emp.EmployeeID) < 2;


--select ProductName
--from Products
--where
--    UnitPrice > (
--        select AVG(UnitPrice)
--        from Products
 --   ); 

--select Products.ProductName
--from Products
--where
 --   UnitPrice = (
 --       select MAX(UnitPrice)
 --       from Products
 --       where UnitPrice < (
 --           select MAX(UnitPrice)
 --           from Products
 --       )
  --  );

--select E.FirstName+' '+E.LastName as EmployeeName,Year(GETDATE())-Year(E.BirthDate) as EmployeeAge,M.FirstName+' '+M.LastName AS ManagerName,Year(GETDATE())-Year(M.BirthDate) AS ManagerAge
--from Employees AS E
--join Employees AS M ON E.ReportsTo = M.EmployeeID
--where Year(GETDATE())-Year(E.BirthDate) > Year(GETDATE())-Year(M.BirthDate);

--select dbo.OrderDetails.ProductID,dbo.Products.ProductName,Orders.OrderDate
--from Orders
--left join OrderDetails
--on dbo.Orders.OrderID=dbo.OrderDetails.OrderID
--left join Products
--on dbo.OrderDetails.ProductID=dbo.Products.ProductID
--where DATEDIFF(day,dbo.Orders.OrderDate,'1997-08-08')=0;

--select Orders.OrderDate,Suppliers.CompanyName
--from Orders
--left join OrderDetails
--on Orders.OrderID=OrderDetails.OrderID
--left join Products
--on Products.ProductID= OrderDetails.ProductID
--left join Suppliers
--on Suppliers.SupplierID=Products.SupplierID
--where DATEDIFF(year,dbo.Orders.OrderDate,'1997-01-01 ')=0;

--SELECT COUNT(*) as EasternEmployees
--from Region
--left join Territories
--on Region.RegionID=Territories.RegionID
--left join EmployeeTerritories
--on Territories.TerritoryID=EmployeeTerritories.TerritoryID
--left join Employees
--on EmployeeTerritories.EmployeeID=Employees.EmployeeID
--where Region.RegionID=1 and Employees.EmployeeID IS NOT NULL;

--select Products.ProductName,Orders.OrderDate
--from Orders
--left join OrderDetails
--on Orders.OrderID=OrderDetails.OrderID
--left join Products
--on OrderDetails.ProductID=Products.ProductID
--where DATEDIFF(year,dbo.Orders.OrderDate,'1996-01-01 ')<>0;










