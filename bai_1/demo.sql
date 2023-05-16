Create database ss2;
use ss2;

create table class(
id int primary key auto_increment,
name varchar(20)
);
create table room(
id int primary key auto_increment,
name varchar(20),
class_id int,
foreign key(class_id) references class(id)
);
create table jame(
`account` varchar(50) primary key,
`password` varchar(50)
);
create table student(
id int primary key auto_increment,
name varchar(50),
birthday date,
gender boolean,
email varchar(50),
`point` float,
class_id int,
`account` varchar(50) unique,
foreign key (class_id) references class(id),
foreign key (`account`) references jame(`account`)
);

create table instructor(
id int primary key auto_increment,
name varchar(50),
birthday date,
salary double
);

create table instructor_class(
 class_id int,
 instructor_id int,
 start_time date,
 end_time date,
 primary key (class_id, instructor_id),
 foreign key(class_id) references class(id),
 foreign key(instructor_id) references instructor(id)
);

insert into class (name) values ('c1121g1'), ('c1221g1'),('a0821i1'),('a0921i1');
insert into room(name,class_id) values ('Ken',1), ('Jame',1),('Ada',2),('Andy',2);

insert into jame(`account`,`password`)
 values('cunn','12345'),('chunglh','12345'),('hoanhh','12345'),('dungd','12345'),('huynhtd','12345'),
 ('hainm','12345'),('namtv','12345'),('hieuvm','12345'),('kynx','12345'),('vulm','12345');

insert into jame(`account`,`password`)
 values('anv','12345'),('bnv','12345');

 
insert into instructor(`name`,birthday, salary)
 values('tran van chanh','1985-02-03',100),('tran minh chien','1985-02-03',200),('vu thanh tien','1985-02-03',300);
insert into instructor(`name`,birthday, salary)
 values('tran van nam','1989-12-12',100);

 
 insert into student(`name`,birthday, gender,`point`, class_id,`account`) 
 values ('nguyen ngoc cu','1981-12-12',1,8,1,'cunn'),('le hai chung','1981-12-12',1,5,1,'chunglh'),
 ('hoang huu hoan','1990-12-12',1,6,2,'hoanhh'),('dau dung','1987-12-12',1,8,1,'dungd'),
 ('ta dinh huynh','1981-12-12',1,7,2,'huynhtd'),('nguyen minh hai','1987-12-12',1,9,1,'hainm'),
 ('tran van nam','1989-12-12',1,4,2,'namtv'),('vo minh hieu','1981-12-12',1,3,1,'hieuvm'),
 ('le xuan ky','1981-12-12',1,7,2,'kynx'),('le minh vu','1981-12-12',1,7,1,'vulm');

 insert into student(`name`,birthday, gender,`point`, class_id,`account`) 
 values ('nguyen van a','1981-12-12',1,8,null,'anv'),('tran van b','1981-12-12',1,5,null,'bnv');

 insert into instructor_class(class_id,instructor_id) values (1,1),(1,2),(2,1),(2,2),(3,1),(3,2);
 
--  Lấy ra thông tin các học viên, và cho biết các học viên đang theo học lớp nào.
SELECT student.*, class.name AS class_name
FROM student
INNER JOIN class ON student.class_id = class.id;
-- Lấy ra thông tin các học viên, và cho biết các học viên đang theo học lớp nào và cả các bạn đã đăng ký nhưng chưa có lớp học.
SELECT student.*, class.name AS class_name
FROM student
LEFT JOIN class ON student.class_id = class.id;
-- Lấy thông tin của các học viên tên “Hai” và 'Huynh’.
SELECT *
FROM student
WHERE name IN ('nguyen minh hai', 'ta dinh huynh');
-- Lấy ra học viên có điểm lớn hơn 5 .
SELECT *
FROM student
WHERE `point` > 5;
-- Lấy ra học viên có họ là “nguyen”
SELECT *
FROM student
WHERE name LIKE 'nguyen%';
-- Thông kế số lượng học sinh theo từng loại điểm.
SELECT COUNT(*) AS count, CASE
        WHEN `point` >= 8 THEN 'Excellent'
        WHEN `point` >= 6.5 THEN 'Good'
        WHEN `point` >= 5 THEN 'Average'
        ELSE 'Poor' END AS point_category
FROM student
GROUP BY point_category;
-- Thông kế số lượng học sinh theo điểm và điểm phải lớn hơn 5.
SELECT COUNT(*) AS count, CEILING(`point`) AS point_rounded
FROM student
WHERE `point` > 5
GROUP BY point_rounded;
-- Thông kế số lượng học sinh theo điểm lớn hơn 5 và chỉ hiện thị với số lượng >= 2.
SELECT COUNT(*) AS count, CEILING(`point`) AS point_rounded
FROM student
WHERE `point` > 5
GROUP BY point_rounded
HAVING count >= 2;
-- Lấy ra danh sách học viên của lớp c1121g1 và sắp xếp tên học viên theo alphabet.
SELECT s.*
FROM student s
INNER JOIN class c ON s.class_id = c.id
WHERE c.name = 'c1121g1'
ORDER BY s.name ASC;