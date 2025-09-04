--Exercise1.1
--select Sales.Orders.orderid,Sales.Orders.orderdate,Sales.Orders.custid,Sales.Orders.empid
--from Sales.Orders
--where Sales.Orders.orderdate = 
--			(select max(Sales.Orders.orderdate)
--			from Sales.Orders)

--Exercise1.2
--select Employees.empid,HR.Employees.firstname,HR.Employees.lastname			
--from HR.Employees
--where Employees.empid not in (select(Sales.Orders.empid)  from Sales.Orders  where Orders.orderdate > '2008-05-01') 


--Exercise1.3
select Sales.Orders.custid,Sales.Orders.orderid,Sales.Orders.orderdate,Sales.Orders.empid
from Sales.Orders
where custid =(

--Exercise1.4
--select distinct Sales.Customers.country
--from Sales.Customers
--where Sales.Customers.country not in (select (HR.Employees.country) from HR.Employees)

--Exercise1.5
--select Sales.Customers.custid,Sales.Customers.companyname
--from Sales.Customers
--where (Customers.custid in (select(Sales.Orders.custid) from Sales.Orders where DATEDIFF(year,Sales.Orders.orderdate,'2007-01-01')=0 )) and (Customers.custid not in(select(Sales.Orders.custid) from Sales.Orders where DATEDIFF(year,Sales.Orders.orderdate,'2008-01-01')=0))



		