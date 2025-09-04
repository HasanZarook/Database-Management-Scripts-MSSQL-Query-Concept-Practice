--select HR.Employees.empid,HR.Employees.firstname,HR.Employees.lastname,Nums.n
--from HR.Employees
--cross join Nums
--where n<=5;

--select HR.Employees.empid,DATEADD(day, 1,'2016/6/12' ) as dt
--from HR.Employees
--cross join Nums
--where (dt >= '2016-06-12' AND dt <= '2016-06-16');

--select Sales.Customers.custid,Sales.Customers.companyname,Sales.Orders.orderid,Sales.Orders.orderdate
--from Sales.Customers 
--inner join Sales.Orders 
--on Sales.Customers.custid= Sales.Orders.custid;

--select Sales.Customers.custid,Sales.OrderDetails.qty,
--from Sales.Customers
--where Sales.Customers.country = 'USA';

