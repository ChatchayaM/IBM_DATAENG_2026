-- 1 exploring sample data for 10 rows
select * 
from `Film_Locations`
limit 10

-- 2 retrive specific columns
select title, director, writer
from `Film_Locations`
limit 10

-- Practice excercises
-- retrieve specific columns with the scope of films that were released in 2001 and later.
select title, `Release Year`, Locations 
from `Film_Locations`
where `Release Year` >= 2001
limit 10
-- retrieve the fun facts and filming locations of all films
select `fun facts`, locations
from `Film_Locations`
limit 10
-- retrieve the names of all films released in the 20th century and before (release years before 2000 including 2000), along with filming locations and release years.
select title, locations, `release year`
from `Film_Locations`
where `release year` <= 2000
limit 10;
-- retrieve the names, production company names, filming locations, and release years of the films not written by James Cameron.
select title, `production company`, locations, `release year`
from `Film_Locations`
where writer <> 'James Cameron'
