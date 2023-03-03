use Northwind;

--cuantos productos se tiene de una determinada categoria s
select * from Products
where CategoryID = 7;

--determinar la cantidad de productos queq son de la categoriID =7  y que se valide si la categoria existe
select count (*)as Cantidad  --(para eligir la columna a contar count(1) es optimo porque en esa columan esta el PK)
from Products a inner join  Categories b --indagar mas de INNER JOIN 
on a.CategoryID = 7;
select * from Categories;
select * from Products;

--cuantos productos tengo por cada categoria
select CategoryID, count(1) as cantidad_de_categoria
from Products group by CategoryID --group by viene en el parcial
select * from Categories;
select * from Products;



--cuantos productos tengo por cada categoria, pero tenga mas o igual de 10 categorias agrupadas
select CategoryID, count(1) as cantidad_de_categoria
from Products group by CategoryID having count(1) >= 10; --having se usa generalmente despues del group by 

--uniendo tabla con detalles
select a.ProductID, a.ProductName, a.SupplierID, a.CategoryID,b.CategoryName,a.QuantityPerUnit,a.UnitPrice
from Products a inner join Categories b	on a.CategoryID = b.CategoryID;

--queremos sacar  el promedio del precio unitario de una determinada categoria
select CategoryID, AVG(UnitPrice)as AVG_PRICE 
from Products
where CategoryID=7
group by CategoryID;

--Queremos sacar el precio unitario  promedio de unas determinadas categorias por su precio unitario mayor a 30
select CategoryID, AVG(UnitPrice)as AVG_PRICE 
from Products
group by CategoryID
having AVG(UnitPrice)>=30;

--Queremos sacar el precio unitario  promedio de unas determinadas categorias por su precio unitario entre 30 y 50
select CategoryID, AVG(UnitPrice)as AVG_PRICE 
from Products
group by CategoryID
having AVG(UnitPrice)>=30 and AVG(UnitPrice)<=50; -- otra forma de hacer esta linea es -> having AVG(UnitPrice) between 30 and 50;

--queremos el max del precio por categorias
select CategoryID, max(UnitPrice) as max_valor
from Products
group by CategoryID
having max(UnitPrice)>100
order by 2 asc;
--no viene en el parcial, pero es importante para las practicas pre profesionales
create procedure sp_cc47_ejemplo 
@CategoryID int
as
begin;
with tmp
     as
     (
          select CategoryID, AVG(UnitPrice)as AVG_PRICE    --tabla temporal
           from Products
           where CategoryID=7 --@categoryID
          group by CategoryID

     )
        select * from tmp
        order by 2;
end
go
exec sp_cc47_ejemplo 7
select * from Products;

--listar categoria sin usar el group bt
select distinct CategoryID from Products

--Listar top 3 de los clientes
select top 3* from Customers

--listar todo los clientes
select * from Customers