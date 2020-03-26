select CategoryID,CategoryName 
from example.Categories
where CategoryID = 4 OR CategoryID = 3

select CategoryID,CategoryName 
from example.Categories
where CategoryID IN (4,3)

select CategoryID,CategoryName 
from example.Categories
where CategoryID NOT IN (4,3)


select * from example.Categories
