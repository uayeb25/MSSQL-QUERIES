------ optimizada de realizar productos cartesianos mendiante las instrucciones de JOINs
select * 
from example.Products as p
inner join example.Suppliers s 
on p.SupplierID = s.SupplierID

--- como funciona el producto cartesiando 
select *
from example.Products as p, example.Suppliers s
where p.SupplierID = s.SupplierID


select * from example.Suppliers s 


