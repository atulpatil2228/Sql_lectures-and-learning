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

select * from course;

insert into course values
("DS1001","Full Stack Data science" ,"Data Science" ,100,"live","Saurabh");

insert into course values
("DS1002"," Data science" ,"Data_Science" ,70,"live","Saurabh");

insert into course values
("ML1002"," Machine Learning" ,"ML" ,20,"hybrid","Atul"),
("DL1002"," Deep learning" ,"DL" ,50,"Recorded","rutuja");

insert into course (Course_id,Course_name,Domain,Student_intake) values
("ML1002"," Machine Learning Models" ,"Machine Learning",100 );
select * from course;
set SQL_SAFE_UPDATES = 0 ;

update course
set Student_intake = 110
where Course_id = "ML1002";

delete from course 
where course_id = "DL1002"


insert into course values
("DL1002"," Deep learning" ,"DL" ,50,"Recorded","rutuja");

INSERT INTO course
VALUES
 ('DL1003', 'Deep learning', 'DL', 50, 'Recorded', 'rutuja');

