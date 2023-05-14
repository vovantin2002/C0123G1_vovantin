CREATE SCHEMA `case_study` ;

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
nam_sinh date not null,
so_cmnd varchar(45) not null,
luong double not null,
so_dien_thoai varchar(45) not null,
email varchar(45),
dia_chi varchar(45),
ma_trinh_do int,
ma_vi_tri int,
ma_bo_phan int);

create table khach_hang(
ma_khach_hang int auto_increment primary key,
ma_loai_khach_hang int ,
ho_ten varchar(45) not null,
ngay_sinh date not null,
gioi_tinh bit(1) not null,
so_cmnd varchar(45) not null,
so_dien_thoai varchar(45) not null,
email varchar(45),
dia_chi varchar(45));

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
ma_kieu_thue int,
ma_loai_dich_vu int,
tieu_chuan_phong varchar(10) ,
mo_ta_tien_nghi_khac varchar(45),
dien_tich_ho_boi double,
so_tang int
);

insert into ma_trinh_do
value(3,"Đại Học"),(4,"Cao Đẳng");

 insert into vi_tri
value(1,"Lễ Tân"),(2,"Phục Vụ"); 

insert into bo_phan
value(1,"Phục vụ"),(2,"Quản lý"); 

insert into loai_khach
value(1,"Gold"),(2,"Silver"); 

insert into hop_dong_chi_tiet(ma_hop_dong,ma_dich_vu,so_luong)
value(1,2,3),(2,3,4); 

insert into khach_hang
value(
(1,"Võ Văn Tín",2002-05-09,1,"999999999","0999999999","abc","quang nam"),
(1,"Võ Văn Tín",2002-05-09,1,"999999999","0999999999","abc","quang nam"),
(1,"Võ Văn Tín",2002-05-09,1,"999999999","0999999999","abc","quang nam"));

select * from hop_dong;
ALTER TABLE nhan_vien
ADD FOREIGN KEY (ma_vi_tri)
REFERENCES vi_tri(ma_vi_tri);

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
