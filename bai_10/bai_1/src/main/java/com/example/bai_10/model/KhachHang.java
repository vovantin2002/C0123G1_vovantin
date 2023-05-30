package com.example.bai_10.model;

public class KhachHang {
    private String name;
    private String ngaySinh;
    private String diaChi;

    public KhachHang(String name, String ngaySinh, String diaChi) {
        this.name = name;
        this.ngaySinh = ngaySinh;
        this.diaChi = diaChi;
    }

    public KhachHang() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(String ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }
}
