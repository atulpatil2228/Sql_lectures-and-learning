create database PW ; 
use pw ;
create table course 

(Course_id char(6),
Course_name varchar(40),
Domain char(20) ,
Student_intake int ,
Mode_of_delivery varchar(20),
Faculty varchar(30)) ;
select * from course;


alter table course change column Mode_of_delivery Delivery_Mode varchar(25);
select * from course;

alter table course drop column Faculty ;
alter table course add column Faculty varchar(30);

drop database PW ;

use pw ;
drop table course ;

alter table course rename to Course_details ;
alter table course_details rename to atul ;
