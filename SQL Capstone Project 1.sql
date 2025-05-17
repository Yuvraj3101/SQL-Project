//--Question a Solution

Select * From Person.Person as P
Select * from Person.EmailAddress as Pea
select * from Person.PersonPhone as PP
select * from Person.PhoneNumberType Pnt

select
	P.FirstName,
	P.LastName,
	Pea.EmailAddress,
	PP.phoneNumber,
	Pnt.name
from Person.Person as P  
Join
	Person.EmailAddress as Pea on P.BusinessEntityID=Pea.BusinessEntityID
Join
	Person.PersonPhone as PP on P.BusinessEntityID=PP.BusinessEntityID
Join
	Person.PhoneNumberType as Pnt on PP.PhoneNumberTypeID=Pnt.PhoneNumberTypeID


//--Question b Solution

Select * from Sales.salesorderheader 
where orderdate>='2011-05-01' and orderdate<'2011-06-01'

//--Question c Solution

Select * from Sales.SalesOrderDetail
Select * from Sales.SalesOrderHeader

Select * from Sales.salesorderheader as Sh
Join Sales.salesorderdetail as Sd on sh.salesorderid=Sd.salesorderid
where Sh.orderdate>='2011-05-01' and Sh.orderdate<'2011-06-01'

//--Question d Solution

Select sum(Totaldue) as TotalSales
from Sales.salesorderheader
where orderdate>='2011-05-01' and orderdate<'2011-06-01'

//--Question e Solution

SELECT 
    MONTH(orderdate) AS month,
    SUM(totaldue) AS Totalsales_of_Month FROM Sales.salesorderheader
    WHERE YEAR(orderdate) = 2011
    GROUP BY MONTH(orderdate)
    ORDER BY sum(Totaldue) desc

//--Question f Solution

Select * from Sales.salesorderheader
 Select * from Sales.customer
 Select * from person.person

 Select SUM(sh.Totaldue) as total 
 from Sales.salesorderheader as sh
 Join Sales.Customer as C ON sh.CustomerID=C.CustomerID
 join Person.Person as P ON C.PersonID=P.BusinessEntityID
 WHERE P.FirstName='Gustavo' AND P.LastName='Achong'

 
 