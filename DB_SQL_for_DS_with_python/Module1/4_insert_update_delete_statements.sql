-- 1 exploring the db
select *
from Instructor
-- when ever run insert, update, delete and come back to run this execute data inside will be change

-- 2 INSERT 1 row
insert into Instructor(`ins_id`, lastname, firstname, city, country)
values(4, 'Saha', 'Sandip', 'Edmonton', 'CA');

-- 3 insert multiple rows
insert into Instructor(`ins_id`, lastname, firstname, city, country)
values(5, 'Doe', 'John', 'Sydney', 'AU'), (6, 'Doe', 'Jane', 'Dhaka', 'BD');

-- Pratice excercises
-- insert id 7 for Antonio Cangiano who lives in Vancouver, CA into the
insert into Instructor(`ins_id`, lastname, firstname, city, country)
values(7, 'Antonio', 'Cangiano', 'Vancouver', 'CA');
-- insert id 8 for Steve Ryan who lives in Barlby, GB and id 9 for Ramesh Sannareddy who lives in Hyderabad, IN
insert into Instructor(`ins_id`, lastname, firstname, city, country)
values(8, 'Steve', 'Ryan', 'Barlby', 'GB'),
        (9, 'Ramesh', 'Sannareddy', 'Hyderabad', 'IN')

-- 4 UPDATE the city for Sandip to Toronto
update Instructor
set city = 'Toronto'
where firstname = 'Sandip'

-- 5 update multi column
update Instructor
set city = 'Dubai', 
    country = 'AE'
where ins_id = 5
 
-- Practice excercises
-- Update the city of the instructor record to Markham whose id is 1
update Instructor
set city = 'Markham'
where ins_id = 1
--Update the city and country for Sandip with id 4 to Dhaka and BD respectively.
update Instructor
set city = 'Sandip',
    country = 'BD'
where ins_id = 4

-- 6 DELETE
delete from instructor
where ins_id = 8

-- Remove the instructor record of Hima.
delete from instructor
where firstname = 'Hima'