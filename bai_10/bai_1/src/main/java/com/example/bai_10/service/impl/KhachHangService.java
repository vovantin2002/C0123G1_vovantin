package com.example.bai_10.service.impl;

import com.example.bai_10.model.KhachHang;
import com.example.bai_10.repository.IKhachHangRepository;
import com.example.bai_10.repository.impl.KhachHangRepository;
import com.example.bai_10.service.IKhachHangService;

import java.util.List;

public class KhachHangService implements IKhachHangService {
    IKhachHangRepository iKhachHangRepository = new KhachHangRepository();

    @Override
    public List<KhachHang> display() {
        return iKhachHangRepository.display();
    }
}
