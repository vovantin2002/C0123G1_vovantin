CREATE database `case_study` ;
use `case_study` ;

create table vi_tri(
ma_vi_tri int auto_increment primary key,
ten_vi_tri varchar(45)
);

create table trinh_do(
ma_trinh_do int auto_increment primary key,
ten_trinh_do varchar(45)
);

create table bo_phan(
ma_bo_phan int auto_increment primary key,
ten_bo_phan varchar(45)
);

create table nhan_vien(
ma_nhan_vien int auto_increment primary key,
ho_ten varchar(45) not null,
ngay_sinh date not null,
so_cmnd varchar(45) not null,
luong double not null,
so_dien_thoai varchar(45) not null,
email varchar(45),
dia_chi varchar(45),
ma_vi_tri int,
ma_trinh_do int,
ma_bo_phan int);

create table khach_hang(
ma_khach_hang int auto_increment primary key,
ho_ten varchar(45) not null,
ngay_sinh date not null,
gioi_tinh bit(1) not null,
so_cmnd varchar(45) not null,
so_dien_thoai varchar(45) not null,
email varchar(45),
dia_chi varchar(45),
ma_loai_khach_hang int);

create table loai_khach(
ma_loai_khach int auto_increment primary key,
ten_loai_khach varchar(45));


create table hop_dong(
ma_hop_dong int auto_increment primary key,
ngay_lam_hop_dong datetime not null,
ngay_ket_thuc datetime not null,
tien_dat_coc double not null,
ma_nhan_vien int,
ma_khach_hang int,
ma_dich_vu int);

create table hop_dong_chi_tiet(
ma_hop_dong_chi_tiet int auto_increment primary key,
so_luong int not null,
ma_hop_dong int,
ma_dich_vu_di_kem int);

create table kieu_thue(
ma_kieu_thue int auto_increment primary key,
ten_kieu_thue varchar(45));

create table loai_dich_vu(
ma_loai_dich_vu int auto_increment primary key,
ten_loai_dich_vu varchar(45));

create table dich_vu_di_kem(
ma_dich_vu_di_kem int auto_increment primary key,
ten_dich_vu_di_kem varchar(45) not null,
gia double not null,
don_vi varchar(10) not null,
trang_thai varchar(45)
);

create table dich_vu(
ma_dich_vu int auto_increment primary key,
ten_dich_vu varchar(45) not null,
dien_tich int,
chi_phi_thue double not null,
so_nguoi_toi_da int,
tieu_chuan_phong varchar(10) ,
mo_ta_tien_nghi_khac varchar(45),
dien_tich_ho_boi double,
so_tang int,
ma_kieu_thue int,
ma_loai_dich_vu int
);

insert into trinh_do
value
(1,"Trung Cấp"),
(2,"Cao Đẳng"),
(3,"Đại Học"),
(4,"Sau Đại Học");

 insert into vi_tri
value
(1,"Quản Lý "),
(2,"Nhân Viên"); 

insert into nhan_vien
value
(1,"Nguyễn Văn An",19701107,456231786,10000000,0901234121,"annguyen@gmail.com","295 Nguyễn Tất Thành, Đà Nẵng",1,3,1),
(2,"Lê Văn Bình",19970409,654231234,7000000,0934212314,"binhlv@gmail.com","22 Yên Bái, Đà Nẵng",1,2,2),
(3,"Hồ Thị Yến",19951212,999231723,14000000,0412352315,"thiyen@gmail.com","K234/11 Điện Biên Phủ, Gia Lai",1,3,2),
(4,"Võ Công Toản",19800404,123231365,17000000,0374443232,"toan0404@gmail.com","77 Hoàng Diệu, Quảng Trị",1,4,4),
(5,"Nguyễn Bỉnh Phát",19991209,454363232,6000000,0902341231,"phatphat@gmail.com","43 Yên Bái, Đà Nẵng",2,1,1),
(6,"Khúc Nguyễn An Nghi",20001108,964542311,7000000,0978653213,"annghi20@gmail.com","294 Nguyễn Tất Thành, Đà Nẵng",2,2,3),
(7,"Nguyễn Hữu Hà",19930101,534323231,8000000,0941234553,"nhh0101@gmail.com","4 Nguyễn Chí Thanh, Huế",2,3,2),
(8,"Nguyễn Hà Đông",19890903,234414123,9000000,0642123111,"donghanguyen@gmail.com","111 Hùng Vương, Hà Nội",2,4,4),
(9,"Tòng Hoang",19820903,256781231,6000000,0245144444,"hoangtong@gmail.com","213 Hàm Nghi, Đà Nẵng",2,4,4),
(10,"Nguyễn Công Đạo",19940108,755434343,8000000,0988767111,"nguyencongdao12@gmail.com","6 Hoà Khánh, Đồng Nai",2,3,2);

insert into khach_hang
value
(1,"Nguyễn Thị Hào",19701107,0,643431213,0945423362,"thihao07@gmail.com","23 Nguyễn Hoàng, Đà Nẵng",5),
(2,"Phạm Xuân Diệu",19920808,1,865342123,0954333333,"xuandieu92@gmail.com","K77/22 Thái Phiên, Quảng Trị",3),
(3,"Trương Đình Nghệ",19900227,1,488645199,0373213122,"nghenhan2702@gmail.com","K323/12 Ông Ích Khiêm, Vinh",1),
(4,"Dương Văn Quan",19810708,1,543432111,0490039241,"duongquan@gmail.com","K453/12 Lê Lợi, Đà Nẵng",1),
(5,"Hoàng Trần Nhi Nhi",19951209,0,795453345,0312345678,"nhinhi123@gmail.com","224 Lý Thái Tổ, Gia Lai",4),
(6,"Tôn Nữ Mộc Châu",20051206,0,732434215,0988888844,"tonnuchau@gmail.com","37 Yên Thế, Đà Nẵng",4),
(7,"Nguyễn Mỹ Kim",19840408,0,856453123,0912345698,"kimcuong84@gmail.com","K123/45 Lê Lợi, Hồ Chí Minh",1),
(8,"Nguyễn Thị Hào",19990408,0,965656433,0763212345,"haohao99@gmail.com","55 Nguyễn Văn Linh, Kon Tum",3),
(9,"Trần Đại Danh",19940701,1,432341235,0643343433,"danhhai99@gmail.com","24 Lý Thường Kiệt, Quảng Ngãi",1),
(10,"Nguyễn Tâm Đắc",19890701,1,344343432,0987654321,"dactam@gmail.com","22 Ngô Quyền, Đà Nẵng",2);

insert into kieu_thue
value
(1,"year"),
(2,"month"),
(3,"day"),
(4,"hour");

insert into loai_dich_vu
value 
(1,	"Villa"),
(2,	"House"),
(3,	"Room");

insert into dich_vu
value 
(1,"Villa Beach Front",25000,10000000,10,"vip","Có hồ bơi",500,4,3,1),
(2,"House Princess 01",14000,5000000,7,"vip","Có thêm bếp nướng",null,3,2,2),
(3,"Room Twin 01",5000,1000000,2,"normal","Có tivi",null,null,4,3),
(4,"Villa No Beach Front",22000,9000000,8,"normal","Có hồ bơi",300,3,3,1),
(5,"House Princess 02",10000,4000000,5,"normal","Có thêm bếp nướng",null,2,3,2),
(6,"Room Twin 02",3000,900000,2,"normal","Có tivi",null,null,4,3);

insert into dich_vu_di_kem
value 
(1,"Karaoke",10000,"giờ","tiện nghi, hiện tại"),
(2,"Thuê xe máy",10000,"chiếc","hỏng 1 xe"),
(3,"Thuê xe đạp",20000,"chiếc","tốt"),
(4,"Buffet buổi sáng",15000,"suất","đầy đủ đồ ăn, tráng miệng"),
(5,"Buffet buổi trưa",90000,"suất","đầy đủ đồ ăn, tráng miệng"),
(6,"Buffet buổi tối",16000,"suất","đầy đủ đồ ăn, tráng miệng");

insert into bo_phan
value
(1,"Sale-Marketing"),
(2,"Hành chính"),
(3,"Phục vụ"),
(4,"Quản lý"); 

insert into loai_khach
value
(1, "Diamond"),
(2, "Platinium"),
(3, "Gold"),
(4, "Silver"),
(5, "Member"); 

insert into hop_dong
value 
(1,	20201208,	20201208,	0,	3,	1,	3),
(2,	20200714,	20200721,	200000,	7,	3,	1),
(3,	20210315,	20210317,	50000,	3,	4,	2),
(4,	20210114,	20210118,	100000,	7,	5,	5),
(5,	20210714,	20210715,	0,	7,	2,	6),
(6,	20210601,	20210603,	0,	7,	7,	6),
(7,	20210902,	20210905,	100000,	7,	4,	4),
(8,	20210617,	20210618,	150000,	3,	4,	1),
(9,	20201119,	20201119,	0,	3,	4,	3),
(10,	20210412,	20210414,	0,	10,	3,	5),
(11,	20210425,	20210425,	0,	2,	2,	1),
(12,	20210525,	20210527,	0,	7,	10,	1);

insert into hop_dong_chi_tiet
value
(1	,5,	2,	4),
(2,	8,	2,	5),
(3,	15,	2,	6),
(4,	1,	3,	1),
(5,	11,	3,	2),
(6,	1,	1,	3),
(7,	2,	1,	2),
(8,	2,	12,	2); 

ALTER TABLE nhan_vien
ADD FOREIGN KEY (ma_vi_tri)
REFERENCES vi_tri(ma_vi_tri);

ALTER TABLE khach_hang
ADD FOREIGN KEY (ma_loai_khach_hang)
REFERENCES loai_khach(ma_loai_khach);

ALTER TABLE dich_vu
ADD FOREIGN KEY (ma_kieu_thue)
REFERENCES kieu_thue(ma_kieu_thue);

ALTER TABLE hop_dong_chi_tiet
ADD FOREIGN KEY (ma_hop_dong)
REFERENCES hop_dong(ma_hop_dong);

ALTER TABLE nhan_vien
ADD FOREIGN KEY (ma_trinh_do)
REFERENCES trinh_do(ma_trinh_do);

ALTER TABLE nhan_vien
ADD FOREIGN KEY (ma_bo_phan)
REFERENCES bo_phan(ma_bo_phan);

ALTER TABLE dich_vu
ADD FOREIGN KEY (ma_loai_dich_vu)
REFERENCES loai_dich_vu(ma_loai_dich_vu);

ALTER TABLE hop_dong
ADD FOREIGN KEY (ma_khach_hang)
REFERENCES khach_hang(ma_khach_hang);

ALTER TABLE hop_dong
ADD FOREIGN KEY (ma_nhan_vien)
REFERENCES nhan_vien(ma_nhan_vien);

ALTER TABLE hop_dong
ADD FOREIGN KEY (ma_dich_vu)
REFERENCES dich_vu(ma_dich_vu);

ALTER TABLE hop_dong_chi_tiet
ADD FOREIGN KEY (ma_dich_vu_di_kem)
REFERENCES dich_vu_di_kem(ma_dich_vu_di_kem);


-- --task 2 Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.

select *
from nhan_vien 
where ho_ten   like "h%"                                                                                                           
or ho_ten   like "t%" 
or ho_ten   like "k%" and char_length(ho_ten)<=15;

-- task 3.	Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
select *
from khach_hang
where date_add(ngay_sinh, interval 18 year) <= curdate()
and date_add(ngay_sinh, interval 50 year) >= curdate() 
&&( dia_chi like "%đà nẵng" or  dia_chi like "%quảng trị");

-- task 4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. 
-- Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng.
--  Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
select hd.ma_khach_hang, kh.ho_ten, count(hd.ma_khach_hang) as so_lan_dat_phong
from hop_dong as hd
join khach_hang as kh on kh.ma_khach_hang = hd.ma_khach_hang
join loai_khach as lk on kh.ma_loai_khach_hang=lk.ma_loai_khach
where lk.ten_loai_khach="Diamond"
group by hd.ma_khach_hang
order by so_lan_dat_phong;

-- task 5.	Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien 
-- (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá, 
-- với Số Lượng và Giá là từ bảng dich_vu_di_kem, hop_dong_chi_tiet) cho tất cả các khách hàng đã từng đặt phòng. 
-- (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
select kh.ma_khach_hang, kh.ho_ten, lk.ten_loai_khach, hd.ma_hop_dong, dv.ten_dich_vu, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc,
 ifnull(sum(dv.chi_phi_thue + ifnull((hdct.so_luong * dvdk.gia),0)),0) as tong_tien
from khach_hang as kh
join loai_khach as lk on kh.ma_loai_khach_hang=lk.ma_loai_khach
left join hop_dong as hd on kh.ma_khach_hang = hd.ma_khach_hang
left join hop_dong_chi_tiet as hdct on hdct.ma_hop_dong=hd.ma_hop_dong 
left join dich_vu_di_kem as dvdk on hdct.ma_dich_vu_di_kem=dvdk.ma_dich_vu_di_kem
join dich_vu as dv on hd.ma_dich_vu=dv.ma_dich_vu
group by hd.ma_hop_dong, kh.ma_khach_hang;

-- task 6	Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ chưa từng 
-- được khách hàng thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).
select  dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.chi_phi_thue, ldv.ten_loai_dich_vu 
from dich_vu dv 
join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu 
left join hop_dong hd on dv.ma_dich_vu = hd.ma_dich_vu 
where ldv.ma_loai_dich_vu not in (
    select distinct dv.ma_loai_dich_vu 
    from dich_vu dv 
    join hop_dong hd on dv.ma_dich_vu = hd.ma_dich_vu 
    where year(hd.ngay_lam_hop_dong) = 2021 and month(hd.ngay_lam_hop_dong) in (1, 2, 3)
) 
group by dv.ma_dich_vu;


-- task 7.	Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, 
-- ten_loai_dich_vu của tất cả các loại dịch vụ đã từng được khách hàng đặt phòng trong năm 2020 
-- nhưng chưa từng được khách hàng đặt phòng trong năm 2021.
select distinct dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.so_nguoi_toi_da, dv.chi_phi_thue , ldv.ten_loai_dich_vu
from dich_vu dv
join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu 
where  not exists (
    select  dv.ma_loai_dich_vu 
    from hop_dong hd
    where  dv.ma_dich_vu = hd.ma_dich_vu 
      and  year(hd.ngay_lam_hop_dong) = 2021
);

-- 8.	Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.

select distinct kh.ho_ten
from khach_hang kh;

select kh.ho_ten
from khach_hang kh 
union
select kh.ho_ten
from khach_hang kh ;

select distinct kh.ho_ten
from khach_hang kh 
group by kh.ma_khach_hang;
 
--  task 9. Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2021 
--  thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
select month(hd.ngay_lam_hop_dong) as "thang", count(*)
from hop_dong hd
where year(hd.ngay_lam_hop_dong)=2021
group by  month(hd.ngay_lam_hop_dong)
order by thang;

-- task 10.	Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu dịch vụ đi kèm. 
-- Kết quả hiển thị bao gồm ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, 
-- so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem).
select hd.ma_hop_dong, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc, hd.tien_dat_coc, ifnull(sum(hdct.so_luong),0)as so_luong_dich_vu_di_kem
from hop_dong as hd 
left join hop_dong_chi_tiet hdct
on hd.ma_hop_dong = hdct.ma_hop_dong
join dich_vu_di_kem as dvdk 
on hd.ma_dich_vu=dvdk.ma_dich_vu_di_kem
group by hd.ma_hop_dong
order by hd.ma_hop_dong;

-- task 11. Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có ten_loai_khach là “Diamond” và 
-- có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.
select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem
from dich_vu_di_kem as dvdk
left join hop_dong_chi_tiet as hdct
on dvdk.ma_dich_vu_di_kem=hdct.ma_dich_vu_di_kem
join hop_dong as hd
on hd.ma_hop_dong=hdct.ma_hop_dong
join khach_hang as kh
on kh.ma_khach_hang=hd.ma_khach_hang
join loai_khach as lk
on lk.ma_loai_khach=kh.ma_loai_khach_hang
where kh.dia_chi like "%vinh" or kh.dia_chi like "%quảng ngãi" and lk.ten_loai_khach="Diamond"
group by dvdk.ma_dich_vu_di_kem;

-- task 12. Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng), 
-- ten_dich_vu, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem), tien_dat_coc của 
-- tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021.
select hd.ma_hop_dong, nv.ho_ten, kh.ho_ten, kh.so_dien_thoai, dv.ten_dich_vu, sum(hdct.so_luong) 
as so_luong_dich_vu_di_kem, hd.tien_dat_coc
from hop_dong as hd
join nhan_vien as nv
on nv.ma_nhan_vien=hd.ma_nhan_vien
join khach_hang as kh
on kh.ma_khach_hang=hd.ma_khach_hang
join dich_vu as dv
on dv.ma_dich_vu=hd.ma_dich_vu
join hop_dong_chi_tiet as hdct
on hdct.ma_hop_dong=hd.ma_hop_dong
where  (month(hd.ngay_lam_hop_dong) in (10,11,12) and year(hd.ngay_lam_hop_dong)=2020) 
and month(hd.ngay_lam_hop_dong) in (1,2,3,4,5,6) and year(hd.ngay_lam_hop_dong)=2021 
group by hd.ma_hop_dong;

-- task 13. Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. 
-- (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).
select dvdk.ma_dich_vu_di_kem, dvdk.ten_dich_vu_di_kem, sum(hdct.so_luong) as so_luong_dich_vu_di_kem
from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct
on dvdk.ma_dich_vu_di_kem=hdct.ma_dich_vu_di_kem 
group by dvdk.ma_dich_vu_di_kem
having sum(hdct.so_luong) = (select max(tong_so_luong) from (select sum(so_luong) 
as tong_so_luong from hop_dong_chi_tiet group by ma_dich_vu_di_kem) as tong_so_luong_dich_vu_di_kem);

-- task 14. Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. 
-- Thông tin hiển thị bao gồm ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung 
-- (được tính dựa trên việc count các ma_dich_vu_di_kem).
select hd.ma_hop_dong, ldv.ten_loai_dich_vu, dvdk.ten_dich_vu_di_kem, count(dvdk.ma_dich_vu_di_kem) as so_lan_su_dung
from hop_dong hd
join hop_dong_chi_tiet hdct 
on hd.ma_hop_dong=hdct.ma_hop_dong
left join dich_vu_di_kem dvdk
on dvdk.ma_dich_vu_di_kem=hdct.ma_dich_vu_di_kem
join dich_vu dv
on dv.ma_dich_vu=hd.ma_dich_vu
right join loai_dich_vu ldv
on ldv.ma_loai_dich_vu=dv.ma_loai_dich_vu
where count(dvdk.ma_dich_vu_di_kem)=1
group by hd.ma_hop_dong;

SELECT * FROM case_study.bo_phan;
-- //abc -- 
