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

insert into customer 
value 
(1, "Minh Quan", 10),
(2, "ngoc oanh", 20),
(3, "hong ha", 50);

insert into `order`
value 
(1, 1, 20060321, Null),
(2, 2, 20060323, Null),
(3, 1, 20060316, Null);

insert into order_detail
value
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);

insert into product
value
(1, "May Giat", 3),
(2, "tu lanh", 3),
(3, "dieu hoa", 3),
(4, "quat", 3),
(5, "bep dien", 3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select o_id, o_date, o_total_price
from `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select customer.c_name,product.p_name
from customer
inner join `order` on customer.c_id = `order`.c_id
inner join order_detail on `order`.o_id = order_detail.o_id
inner join product on order_detail.p_id = product.p_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select customer.c_name
from customer 
left join `order` on customer.c_id = `order`.c_id
where `order`.c_id is null;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. 
-- Giá bán của từng loại được tính = odQTY*pPrice)
select `order`.o_id, `order`.o_date, sum(order_detail.od_qty*product.p_price)
from `order` 
join order_detail on `order`.o_id = order_detail.o_id
join product  on product.p_id = order_detail.p_id
group by `order`.o_id;

