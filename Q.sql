-- write the query to find avg marks in each city in ascening order .-- 
create database cities;
use cities;
create table city (
city varchar(50));

insert into city ( city ) value (
"delhi"),( "koraput") , ("mumbai"),("china"), ("koraput");

select *from city;
select city, count(city)
 from city
group by city;