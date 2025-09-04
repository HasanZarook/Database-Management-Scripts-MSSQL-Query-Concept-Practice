--select dbo.Customers.CustomerID,dbo.Customers.ContactName 
--from dbo.Customers
--where dbo.Customers.CustomerID in (select dbo.Orders.CustomerID from dbo.Orders where DATEDIFF(day,dbo.Orders.RequiredDate,dbo.Orders.ShippedDate)>=0);

--select dbo.Products.ProductName,(select dbo.Suppliers.CompanyName from dbo.Suppliers  where dbo.Products.SupplierID=dbo.Suppliers.SupplierID) as SupplierName
--from dbo.Products;

--select dbo.OrderDetails.ProductID,(select dbo.Products.ProductName from dbo.Products where dbo.Products.ProductID in (select dbo.OrderDetails.ProductID  ) ) as ProductName,dbo.OrderDetails.Quantity
--from OrderDetails
--where dbo.OrderDetails.OrderID in (select dbo.Orders.OrderID from dbo.Orders where DATEDIFF(year,dbo.Orders.OrderDate,'1998-01-01')= 0 ) 
--order by Quantity DESC;

--select Employees.FirstName+' '+Employees.LastName AS EmployeeName, Man.FirstName+' '+Man.LastName AS ManagerName
--from Employees 
--left join Employees AS Man 
--on Employees.ReportsTo = Man.EmployeeID
--where Employees.ReportsTo in (select Man.EmployeeID from Employees AS Man)

--select Employees.FirstName+' '+Employees.LastName AS ManagerName
--from Employees
--left join Employees AS Emp 
--on Employees.EmployeeID = Emp.ReportsTo
--group by  Employees.FirstName+' '+Employees.LastName
--having COUNT(Emp.EmployeeID) < 2;

--select ProductName
--from Products
--where UnitPrice > (select AVG(UnitPrice) from Products ); 

--select Products.ProductName
--from Products
--where UnitPrice = (select MAX(UnitPrice) from Products where UnitPrice < ( select MAX(UnitPrice) from Products));

--select E.FirstName+' '+E.LastName as EmployeeName,Year(GETDATE())-Year(E.BirthDate) as EmployeeAge,M.FirstName+' '+M.LastName AS ManagerName,Year(GETDATE())-Year(M.BirthDate) AS ManagerAge
--from Employees AS E
--join Employees AS M ON E.ReportsTo = M.EmployeeID
--where Year(GETDATE())-Year(E.BirthDate) > Year(GETDATE())-Year(M.BirthDate);

--select dbo.OrderDetails.ProductID,(select dbo.Products.ProductName from dbo.Products where dbo.Products.ProductID in (select dbo.OrderDetails.ProductID  ) ) as ProductName 
--from OrderDetails
--where dbo.OrderDetails.OrderID in (select dbo.Orders.OrderID from dbo.Orders where DATEDIFF(day,dbo.Orders.OrderDate,'1997-08-08')= 0 ) 


--select Suppliers.CompanyName
--from Suppliers
--where Suppliers.SupplierID in (select Products.SupplierID from Products where Products.ProductID in (select OrderDetails.ProductID from OrderDetails where OrderDetails.OrderID in (select Orders.OrderID from Orders where DATEDIFF(year,dbo.Orders.OrderDate,'1997-01-01 ')=0)));

--SELECT COUNT(*) as EasternEmployees
--from Employees
--where Employees.EmployeeID in (select EmployeeTerritories.EmployeeID from EmployeeTerritories where EmployeeTerritories.TerritoryID in( select Territories.TerritoryID from Territories where Territories.RegionID in (select Region.RegionID from Region where Region.RegionID=1 and Employees.EmployeeID IS NOT NULL)));

--select Products.ProductName
--from Products
--where Products.ProductID in (select OrderDetails.ProductID from OrderDetails where OrderDetails.OrderID in (select Orders.OrderID from Orders where DATEDIFF(year,dbo.Orders.OrderDate,'1996-01-01 ')<>0));