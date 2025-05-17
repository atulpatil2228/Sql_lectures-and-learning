create database PW ; 

## unique constraints
create table course 
(Course_id char(6) unique,
Course_name varchar(40),
Domain char(20) ,
Student_intake int ,
Mode_of_delivery varchar(20),
Faculty varchar(30)) ;

insert into course values
("DS1001","Full Stack Data science" ,"Data Science" ,100,"live","Saurabh"),
("DS1002"," Data science" ,"Data_Science" ,70,"live","Saurabh"),
("ML1002"," Machine Learning" ,"ML" ,20,"hybrid","Atul"),
("DL1002"," Deep learning" ,"DL" ,50,"Recorded","rutuja");


insert into course values
 ('DL1003', 'Deep learning', 'DL', 50, 'Recorded', 'rutuja');


select * from course ;

insert into course (Course_id,Course_name,Domain,Student_intake) values
("ML1004"," Machine Learning Models" ,"Machine Learning",100 );

insert into course values
("DS1001"," Data science" ,"Data Science" ,100,"recorded","Subash");


create table course 
(Course_id char(6) unique,
Course_name varchar(40),
Domain char(20) ,
Student_intake int ,
Mode_of_delivery varchar(20) not null,
Faculty varchar(30)) ;

insert into course values
("DS1001","Full Stack Data science" ,"Data Science" ,100,"live","Saurabh"),
("DS1002"," Data science" ,"Data_Science" ,70,"live","Saurabh"),
("ML1002"," Machine Learning" ,"ML" ,20,"hybrid","Atul"),
("DL1002"," Deep learning" ,"DL" ,50,"Recorded","rutuja");

insert into course values
 ('DL1003', 'Deep learning', 'DL', 50, 'Recorded', 'rutuja');
 
 insert into course (Course_id,Course_name,Domain,Student_intake,Mode_of_delivery) values
("ML1004"," Machine Learning Models" ,"Machine Learning",100 ,"Hybrid");


select * from course ;


## check constraints
create table course 
(Course_id char(6) unique,
Course_name varchar(40),
Domain char(20) ,
Student_intake int check(student_intake > 0) ,
Delivery_Mode varchar(20) not null,
Faculty varchar(30)) ;

insert into course values
("DS1001","Full Stack Data science" ,"Data Science" ,100,"live","Saurabh"),
("DS1002"," Data science" ,"Data_Science" ,70,"live","Saurabh"),
("ML1002"," Machine Learning" ,"ML" ,20,"hybrid","Atul"),
("DL1002"," Deep learning" ,"DL" ,50,"Recorded","rutuja");

select * from course ;

 
 insert into course (Course_id,Course_name,Domain,Student_intake,Delivery_Mode) values
("ML1004"," Machine Learning Models" ,"Machine Learning",100 ,"Hybrid");

insert into course values
("ML1003"," Machine Learning Models evaluation" ,"ML" ,20,"hybrid","Manish");




## constraint default
create table course 
(Course_id char(6) unique,
Course_name varchar(40),
Domain char(20) ,
Student_intake int check(student_intake > 0) ,
Delivery_Mode varchar(20) not null,
Faculty varchar(30) default("Atul")) ;

insert into course values
("DS1001","Full Stack Data science" ,"Data Science" ,100,"live","Saurabh"),
("DS1002"," Data science" ,"Data_Science" ,70,"live","Saurabh"),
("ML1002"," Machine Learning" ,"ML" ,20,"hybrid","Atul"),
("DL1002"," Deep learning" ,"DL" ,50,"Recorded","rutuja");

select * from course ;

 
 insert into course (Course_id,Course_name,Domain,Student_intake,Delivery_Mode) values
("ML1004"," Machine Learning Models" ,"Machine Learning",100 ,"Hybrid");


##Primary constraint
create table course 
(Course_id char(6) primary key,
Course_name varchar(40),
Domain char(20) ,
Student_intake int check(student_intake > 0) ,
Delivery_Mode varchar(20) not null,
Faculty varchar(30) default("Atul")) ;

insert into course values
("DS1001","Full Stack Data science" ,"Data Science" ,100,"live","Saurabh"),
("DS1002"," Data science" ,"Data_Science" ,70,"live","Saurabh"),
("ML1002"," Machine Learning" ,"ML" ,20,"hybrid","Atul"),
("DL1002"," Deep learning" ,"DL" ,50,"Recorded","rutuja");

select * from course ;

 
 insert into course (Course_id,Course_name,Domain,Student_intake,Delivery_Mode) values
("ML1004"," Machine Learning Models" ,"Machine Learning",100 ,"Hybrid");

insert into course values
("ML1003"," Machine Learning Models evaluation" ,"ML" ,20,"hybrid","Manish");

insert into course (Course_name,Domain,Student_intake,Delivery_Mode) values
(" Machine Learning Models" ,"Machine Learning",100 ,"Hybrid");


