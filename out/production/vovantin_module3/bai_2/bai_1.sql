create database bai_2;
use bai_2;

create table nha_cc(
  ma_ncc int auto_increment primary key,
  ten_ncc varchar(45) not null,
  dia_chi varchar(45) not null,
  sdt varchar(45) not null
);

create table don_dh(
  so_dh int auto_increment primary key,
  ngay_dh date,
  ma_ncc int,
  foreign key(ma_ncc) references nha_cc(ma_ncc)
);

create table phieu_nhap(
  so_pn int auto_increment primary key,
  ngay_nhap date 
);

create table vat_tu(
  ma_vat_tu int auto_increment primary key,
  ten_vat_tu varchar(45) not null
);

create table chi_tiet_don_dh(
  so_dh int,
  ma_vat_tu int,
  primary key(so_dh,ma_vat_tu),
  foreign key(so_dh)references don_dh(so_dh),
  foreign key(ma_vat_tu)references vat_tu(ma_vat_tu)
);

create table chi_tiet_phieu_nhap(
  dg_nhap int,
  sl_nhap int,
  so_pn int,
  ma_vat_tu int,
  primary key(so_pn,ma_vat_tu),
  foreign key(so_pn)references phieu_nhap(so_pn),
  foreign key(ma_vat_tu)references vat_tu(ma_vat_tu)
);

create table phieu_xuat(
  so_px int auto_increment primary key,
  ngay_xuat date
);

create table chi_tiet_phieu_xuat(
  dg_xuat int,
  sl_xuat int,
  so_px int,
  ma_vat_tu int,
  primary key(so_px,ma_vat_tu),
  foreign key(so_px)references phieu_xuat(so_px),
  foreign key(ma_vat_tu)references vat_tu(ma_vat_tu)
);
