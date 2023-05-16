create database `student-management`;
use `student-management`;

create table class (
    id int auto_increment primary key,
    name varchar(45) not null
);

create table teacher(
id int  auto_increment primary key,
`name` varchar(45) ,
age int not null,
country varchar(45)
);


