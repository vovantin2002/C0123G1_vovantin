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
ma_hop_dong int,
ma_dich_vu_di_kem int,
so_luong int not null);

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
(1,"Nguyễn Văn An",1970-11-07,456231786,10000000,0901234121,"annguyen@gmail.com","295 Nguyễn Tất Thành, Đà Nẵng",1,3,1),
(2,"Lê Văn Bình","1997-04-09",654231234,7000000,0934212314,"binhlv@gmail.com","22 Yên Bái, Đà Nẵng",1,2,2),
(3,"Hồ Thị Yến","1995-12-12",999231723,14000000,0412352315,"thiyen@gmail.com","K234/11 Điện Biên Phủ, Gia Lai",1,3,2),
(4,"Võ Công Toản","1980-04-04",123231365,17000000,0374443232,"toan0404@gmail.com","77 Hoàng Diệu, Quảng Trị",1,4,4),
(5,"Nguyễn Bỉnh Phát","1999-12-09",454363232,6000000,0902341231,"phatphat@gmail.com","43 Yên Bái, Đà Nẵng",2,1,1),
(6,"Khúc Nguyễn An Nghi","2000-11-08",964542311,7000000,0978653213,"annghi20@gmail.com","294 Nguyễn Tất Thành, Đà Nẵng",2,2,3),
(7,"Nguyễn Hữu Hà","1993-01-01",534323231,8000000,0941234553,"nhh0101@gmail.com","4 Nguyễn Chí Thanh, Huế",2,3,2),
(8,"Nguyễn Hà Đông","1989-09-03",234414123,9000000,0642123111,"donghanguyen@gmail.com","111 Hùng Vương, Hà Nội",2,4,4),
(9,"Tòng Hoang","1982-09-03",256781231,6000000,0245144444,"hoangtong@gmail.com","213 Hàm Nghi, Đà Nẵng",2,4,4),
(10,"Nguyễn Công Đạo","1994-01-08",755434343,8000000,0988767111,"nguyencongdao12@gmail.com","6 Hoà Khánh, Đồng Nai",2,3,2);

insert into khach_hang
value
(1,"Nguyễn Thị Hào",1970-11-07,0,643431213,0945423362,"thihao07@gmail.com","23 Nguyễn Hoàng, Đà Nẵng",5),
(2,"Phạm Xuân Diệu",1992-08-08,1,865342123,0954333333,"xuandieu92@gmail.com","K77/22 Thái Phiên, Quảng Trị",3),
(3,"Trương Đình Nghệ",1990-02-27,1,488645199,0373213122,"nghenhan2702@gmail.com","K323/12 Ông Ích Khiêm, Vinh",1),
(4,"Dương Văn Quan",1981-07-08,1,543432111,0490039241,"duongquan@gmail.com","K453/12 Lê Lợi, Đà Nẵng",1),
(5,"Hoàng Trần Nhi Nhi",1995-12-09,0,795453345,0312345678,"nhinhi123@gmail.com","224 Lý Thái Tổ, Gia Lai",4),
(6,"Tôn Nữ Mộc Châu",2005-12-06,0,732434215,0988888844,"tonnuchau@gmail.com","37 Yên Thế, Đà Nẵng",4),
(7,"Nguyễn Mỹ Kim",1984-04-08,0,856453123,0912345698,"kimcuong84@gmail.com","K123/45 Lê Lợi, Hồ Chí Minh",1),
(8,"Nguyễn Thị Hào",1999-04-08,0,965656433,0763212345,"haohao99@gmail.com","55 Nguyễn Văn Linh, Kon Tum",3),
(9,"Trần Đại Danh",1994-07-01,1,432341235,0643343433,"danhhai99@gmail.com","24 Lý Thường Kiệt, Quảng Ngãi",1),
(10,"Nguyễn Tâm Đắc",1989-07-01,1,344343432,0987654321,"dactam@gmail.com","22 Ngô Quyền, Đà Nẵng",2);

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
(2,"House Princess 01",14000,5000000,7,"vip","Có thêm bếp nướng","null",3,2,2),
(3,"Room Twin 01",5000,1000000,2,"normal","Có tivi","null","null",4),
(4,"Villa No Beach Front",22000,9000000,8,"normal","Có hồ bơi",300,3,3,1),
(5,"House Princess 02",10000,4000000,5,"normal","Có thêm bếp nướng","null",2,3,2),
(6,"Room Twin 02",3000,900000,2,"normal","Có tivi","null","null",4,3);

insert into dich_vu_di_kem
value 
(1,"Karaoke",10000,"giờ","tiện nghi", "hiện tại"),
(2,"Thuê xe máy",10000,"chiếc","hỏng 1 xe"),
(3,"Thuê xe đạp",20000,"chiếc","tốt"),
(4,"Buffet buổi sáng",15000,"suất","đầy đủ đồ ăn", "tráng miệng"),
(5,"Buffet buổi trưa",90000,"suất","đầy đủ đồ ăn", "tráng miệng"),
(6,"Buffet buổi tối",16000,"suất","đầy đủ đồ ăn", "tráng miệng");

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
(1,	2020-12-08,	2020-12-08,	0,	3,	1,	3),
(2,	2020-07-14,	2020-07-21,	200000,	7,	3,	1),
(3,	2021-03-15,	2021-03-17,	50000,	3,	4,	2),
(4,	2021-01-14,	2021-01-18,	100000,	7,	5,	5),
(5,	2021-07-14,	2021-07-15,	0,	7,	2,	6),
(6,	2021-06-01,	2021-06-03,	0,	7,	7,	6),
(7,	2021-09-02,	2021-09-05,	100000,	7,	4,	4),
(8,	2021-06-17,	2021-06-18,	150000,	3,	4,	1),
(9,	2020-11-19,	2020-11-19,	0,	3,	4,	3),
(10,	2021-04-12,	2021-04-14,	0,	10,	3,	5),
(11,	2021-04-25,	2021-04-25,	0,	2,	2,	1),
(12,	2021-05-25,	2021-05-27,	0,	7,	10,	1);

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
-- //abc -- 
