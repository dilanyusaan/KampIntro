-- Select
Select ContactName Adi,CompanyName Sirketadi,City Sehir from Customers

Select * from Customers where City = 'Berlin'

--case insensitive
Select * from Products where CategoryID=1 or CategoryID=3

Select * from Products where CategoryID=1 and UnitPrice>=10

Select* from Products order by UnitPrice asc -- ascending artan demek önce en ucuz

Select* from Products where CategoryID=1 order by UnitPrice desc --descending azalan demek önce en pahalı

Select count(*) from Products where CategoryID=2


Select categoryId,count(*) from products where unitprice>20 group by CategoryID having count(*)<10

select products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName
from products inner join categories
on products.CategoryID = Categories.CategoryID
where products.UnitPrice>10


-- DTO Data Transformation Object

select * from Products p inner join [Order Details] od -- inner join sadece eşleşen kayıtları getirir
on p.ProductID = od.ProductID
inner join Orders o
on o.OrderID = od.OrderID

select * from Customers c left join Orders o -- left join solda olup sağda olmayanları da getirir right join de tam tersi
on c.CustomerID = o.CustomerID
where o.CustomerID is null


