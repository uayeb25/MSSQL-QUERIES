--- GROUP BY (resumir mi informacion)

----- cuales es el top 3 de proveedores con mayor registro de productos.

SELECT TOP 3 
    p.SupplierID, 
    s.SupplierName, 
    s.Phone,
    COUNT(ProductoID) AS ConteoProductos
FROM example.Products as p
INNER JOIN example.Suppliers as s
ON p.SupplierID = s.SupplierID
GROUP BY    p.SupplierID,
            s.SupplierName,
            s.Phone
ORDER BY COUNT(ProductoID) DESC