use world ;

## limit 
select* from country
limit 5;

## Fetch the data from row 22 to row 31
select* from country
limit 10
offset 21;

select  Code ,Country_Name,Continent,Country_pop from country 
order by Country_pop desc
limit 5  ;

select Country_Name,Continent,
round(Country_pop/SurfaceArea,2) as Pop_density 
from country 
order by Pop_density desc
limit 5 
offset 12;

select Country_Name,Continent,
round(Country_pop/SurfaceArea,2) as Pop_density 
from country 
order by Pop_density desc
limit 5 
offset 139;
