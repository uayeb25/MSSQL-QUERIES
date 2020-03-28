select * 
from example.Orders

select top 10 * 
from example.Orders
ORDER by OrderDate DESC

---- cuales las ultimas 3 transacciones hechas por el employee numero 3 
select top 10 *
from example.Orders
where EmployeeID = 3
order by OrderDate desc