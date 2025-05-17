use world ;
select Name ,District,Population from city ;
select * from country ;
alter table city change column Name City_Name char(35);
alter table country change column Name Country_Name char(52);

Alter table city change column  Population City_Pop int;
alter table country change column Population Country_pop int;

select * from country ;
select * from city ;

select code , Country_name from country ;

select 
Country_Name,Region,SurfaceArea,Country_pop,LifeExpectancy,GNP,
Country_pop/1000000 as Cou_Pop_in_mn,
round(GNP*1000000/Country_pop,0) as Per_cap_GNP,
GNP/1000 as GNP_in_bn 
from country ;

select * from country 
where Continent = "Asia";
select * from country 
where Continent = "North America";
select * from country 
where IndepYear = 1947;
select * from country 
where LifeExpectancy = 77.4;

select 
Country_Name,Region,SurfaceArea,Country_pop,LifeExpectancy,GNP,
Country_pop/1000000 as Cou_Pop_in_mn,
round(GNP*1000000/Country_pop,0) as Per_cap_GNP,
round(GNP/1000,0) as GNP_in_bn,0 
from country 
order by GNP_in_bn desc;

select 
Country_Name,Region,SurfaceArea,Country_pop,LifeExpectancy,GNP,
Country_pop/1000000 as Cou_Pop_in_mn,
round(GNP*1000000/Country_pop,0) as Per_cap_GNP,
round(GNP/1000,0) as GNP_in_bn,0 
from country 
order by Per_cap_GNP desc;

select 
Country_Name,Region,SurfaceArea,Country_pop,LifeExpectancy,GNP,
Country_pop/1000000 as Cou_Pop_in_mn,
round(GNP*1000000/Country_pop,0) as Per_cap_GNP,
round(GNP/1000,0) as GNP_in_bn,0 
from country 
order by Region desc;

select 
Country_Name,Region,SurfaceArea,Country_pop,LifeExpectancy,GNP,
Country_pop/1000000 as Cou_Pop_in_mn,
round(GNP*1000000/Country_pop,0) as Per_cap_GNP,
round(GNP/1000,0) as GNP_in_bn,0 
from country 
order by Country_Name desc;

select 
Country_Name,Region,SurfaceArea,Country_pop,LifeExpectancy,GNP,
Country_pop/1000000 as Cou_Pop_in_mn,
round(GNP*1000000/Country_pop,0) as Per_cap_GNP,
round(GNP/1000,0) as GNP_in_bn,0 
from country 
order by Country_Name ;

select 
Country_Name,Region,SurfaceArea,Country_pop,LifeExpectancy,GNP,
Country_pop/1000000 as Cou_Pop_in_mn,
round(GNP*1000000/Country_pop,0) as Per_cap_GNP,
round(GNP/1000,0) as GNP_in_bn,0 
from country 
order by Region ,Country_Name desc ;

## constraints limi
select 
Country_Name,Region,SurfaceArea,Country_pop,LifeExpectancy,GNP,
Country_pop/1000000 as Cou_Pop_in_mn,
round(GNP*1000000/Country_pop,0) as Per_cap_GNP,
round(GNP/1000,0) as GNP_in_bn,0 
from country 
order by Per_cap_GNP desc
limit 13;

## of set function
select 
Country_Name,Region,SurfaceArea,Country_pop,LifeExpectancy,GNP,
Country_pop/1000000 as Cou_Pop_in_mn,
round(GNP*1000000/Country_pop,0) as Per_cap_GNP,
round(GNP/1000,0) as GNP_in_bn,0 
from country 
order by Per_cap_GNP desc
limit 50
offset 94;


