--- Como podemos obtener todas las ventas hechas por cada producto en el mes 7

WITH ProductosVendidosMes AS (
    SELECT p.ProductoID,  sum(p.Price*od.Quantity) as Venta
    FROM example.Orders AS o
    INNER JOIN example.OrderDetails AS od
    ON o.OrderID = od.OrderID
    INNER JOIN example.Products AS p
    ON od.ProductID = p.ProductoID
    WHERE MONTH(OrderDate) = 8
    GROUP BY p.ProductoID
)

SELECT s.SupplierName, p.ProductoID, p.ProductName, isnull(m7.Venta,0) AS Venta
FROM example.Products AS p
LEFT JOIN ProductosVendidosMes  as m7
ON p.ProductoID = m7.ProductoID
INNER JOIN example.Suppliers AS s 
ON p.SupplierID = s.SupplierID
ORDER BY s.SupplierName, Venta DESC