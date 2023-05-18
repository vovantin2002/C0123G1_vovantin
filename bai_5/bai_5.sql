create database bai5_demo;
use bai5_demo;

create table products(
id int auto_increment primary key,
product_code int,
product_name varchar(45),
product_price double,
product_amount int,
product_description varchar(45),
product_status varchar(45)
);

insert into products
value
('2', '111', 'dầu xả', '10', '2', 'mới', 'oke'),
('3', '222', 'dầu ăn', '10', '2', 'mới', 'oke');

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
create index index_product_code on products(product_code);

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
create index index_composite on products(product_name,product_price);

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
explain select *
from products
where id=1;

-- So sánh câu truy vấn trước và sau khi tạo index
-- chưa tạo index số rows hiển thị là tất cả số dòng còn sau khi tạo chỉ hiển thị 1 rows

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
create view view_products(product_code, product_name, product_price, product_status) 
as select product_code, product_name, product_price, product_status
from products;
-- Tiến hành sửa đổi view
create or replace view view_products1 as select product_code, product_name, product_price, product_status 
from products where product_code = 123;
-- Tiến hành xoá view
drop view view_products1;

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
delimiter //
create procedure lay_thong_tin()
begin
select *
from products;
end //
delimiter ;
call lay_thong_tin();
-- Tạo store procedure thêm một sản phẩm mới
delimiter //
create procedure them_1_sp()
begin
insert into products
value
('4', '111', 'dầu xả', '10', '2', 'mới', 'oke');
end //
delimiter ;
call them_1_sp();