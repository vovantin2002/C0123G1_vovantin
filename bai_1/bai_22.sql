create database quan_ly_ban_hang;
use quan_ly_ban_hang;

create table customer(
  c_id int auto_increment primary key,
  c_name varchar(45),
  c_age int 
);

create table `order`(
  o_id int auto_increment primary key,
  c_id int,
  o_date date,
  o_total_price double,
  foreign key(c_id)references customer(c_id)
);

create table product(
  p_id int auto_increment primary key,
  p_name varchar(45),
  p_price double
);

create table order_detail(
  o_id int,
  p_id int,
  od_qty varchar(45),
  primary key(o_id,p_id),
  foreign key(p_id)references product(p_id),
  foreign key(o_id)references `order`(o_id)
);