
---- select o.*,year(OrderDate) from example.orders as o

--- cuales fueron el total de ordenes hechas por año. 
SELECT 
    year(OrderDate) as Anio,
    MONTH(OrderDate) as Mes, 
    count(*) as conteo 
FROM example.orders as o
GROUP BY year(OrderDate),MONTH(OrderDate)

--- cuales fueron las ventas de ordenes hechas por año y mes. 
SELECT 
    year(OrderDate) as Anio,
    MONTH(OrderDate) as Mes, 
    sum(p.Price*od.Quantity) as Vendido 
FROM example.orders as o
inner join example.OrderDetails as od 
on o.OrderID = od.OrderID
inner join example.Products as p 
on od.ProductID = p.ProductoID
GROUP BY year(OrderDate),MONTH(OrderDate)

--- cuales fueron las ventas de ordenes hechas por año y mitades de meses. 

SELECT     
    YEAR(OrderDate) AS Anio,
    MONTH(OrderDate) AS Mes,
    CASE 
        WHEN DAY(OrderDate) <= 15 THEN '1H'
        ELSE '2H'
    END AS HalfMonth,
    SUM(p.Price*od.Quantity) as Vendido
FROM example.Orders AS o
INNER JOIN example.OrderDetails as od 
ON o.OrderID = od.OrderID
INNER JOIN example.Products as p 
ON od.ProductID = p.ProductoID
GROUP BY YEAR(OrderDate),
        MONTH(OrderDate),
        CASE 
            WHEN DAY(OrderDate) <= 15 THEN '1H'
            ELSE '2H'
        END

------ 
select MAX(OrderDate) 
from example.Orders
where year(OrderDate) = 1997 and MONTH(OrderDate) = 2



