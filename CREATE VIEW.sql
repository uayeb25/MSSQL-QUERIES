ALTER VIEW example.ViewSuppliersByNProducts
AS
SELECT 
    s.SupplierID,
    SupplierName,
    COUNT(ProductoID) as number_products
FROM example.Suppliers as s 
LEFT JOIN example.Products as p 
ON s.SupplierID = p.SupplierID
GROUP BY 
    s.SupplierID,
    SupplierName

