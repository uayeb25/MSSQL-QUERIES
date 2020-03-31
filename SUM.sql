
--- este query: cuales fueron las 5 ordenes en las cuales se facturo mas.
SELECT top 5    
    od.OrderID,
    SUM(od.Quantity * p.Price) as Total    
FROM [example].[OrderDetails] as od
INNER JOIN example.Products as p 
ON od.ProductID = p.ProductoID
GROUP by od.OrderID
ORDER BY Total desc

---- fueron las 5 ordenes en las cuales se facturo mas y en que fecha.



---- MAX, MIN 