-- 1 count the number of records or rows of the table
select count (*)
from `Film_Locations` 

-- 2 count the number of locations of the films which only retrieve the films written by a James Cameron
select count(locations)
from `Film_Locations` 
where writer = 'James Cameron'

-- 3 retrive only the unique title
select distinct title
from `Film_Locations`
 
-- 4 count the unique release years of films produced by a specific company
select count(distinct `release year`)
from `Film_Locations`
where `production company` = "Warner Bros. Pictures"

-- 5 retrieve only the first 25 rows from the table 
select *
from `Film_Locations`
limit 25

-- 6 retrieve 15 rows from the table starting from row 11
select *
from `Film_Locations`
limit 15
offset 10