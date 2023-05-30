package com.example.bai_10.repository.impl;

import com.example.bai_10.model.KhachHang;
import com.example.bai_10.repository.IKhachHangRepository;

import java.util.ArrayList;
import java.util.List;

public class KhachHangRepository implements IKhachHangRepository {
    static List<KhachHang> khachHangList = new ArrayList<>();

    static {
        khachHangList.add(new KhachHang("Mai Văn Hoàn", "1983-08-20", "Hà Nội"));
        khachHangList.add(new KhachHang("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang"));
        khachHangList.add(new KhachHang("Nguyễn Thái Hòa", "1983-08-22", "Nam Định"));
        khachHangList.add(new KhachHang("Trần Đăng KHoa", "1983-08-17", "Hà Tây"));
        khachHangList.add(new KhachHang("Nguyễn Đình Thi", "1983-08-19", "Hà Nội"));
    }

    @Override
    public List<KhachHang> display() {
        return khachHangList;
    }
}
