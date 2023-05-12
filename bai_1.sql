CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);
ALTER TABLE `student-management`.`users` 
CHANGE COLUMN `name` `name` VARCHAR(25) NOT NULL , RENAME TO  `student-management`.`class` ;
SELECT * FROM `student-management`.class;
create table Teacher(
id int  auto_increment primary key,
`name` varchar(45) ,
age int not null,
country varchar(45)
);
SELECT * FROM `student-management`.teacher;

