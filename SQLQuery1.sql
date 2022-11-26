use Northwind

select c.CustomerID as Client,c.ContactName as Client_Name,c.Country as Client_Country,c.City as Client_City,e.EmployeeID,
e.LastName as Emp_Name,e.FirstName as Emp_FName,e.Country as Emp_Country,e.City as Emp_City,Year(OrderDate) as Anne,
MONTH(OrderDate) as Mois,sum(case when o.ShippedDate IS NULL then 1 else 0 end)  non_livrer,
COUNT(o.ShippedDate) as Command_Livrer
from Orders o , Customers c , Employees e
where c.CustomerID = o.CustomerID
group by c.CustomerID,c.Country,c.City,c.ContactName,e.EmployeeID,e.LastName,e.FirstName,e.Country,e.City,Year(OrderDate),MONTH(OrderDate)

