use world ;
select * from city ;
select * from country ;

select Country_Name,Continent,SurfaceArea,Country_pop  from country ;

## Create a columnn from existing ones 
select Country_Name,Continent,SurfaceArea,Country_pop,
Country_pop/SurfaceArea as Pop_density
from country ;

## order by clause
select Country_Name,Continent,SurfaceArea,Country_pop,
Country_pop/SurfaceArea as Pop_density
from country
order by Pop_density desc  ;

## Order by mutliple Columns

select Country_Name,Continent,SurfaceArea,Country_pop,
Country_pop/SurfaceArea as Pop_density
from country
order by Continent ,Pop_density desc  ;