package com.example.bai_10.controller;

import com.example.bai_10.model.KhachHang;
import com.example.bai_10.service.IKhachHangService;
import com.example.bai_10.service.impl.KhachHangService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "KhachHangServlet", value = "/khach-hang")
public class KhachHangServlet extends HttpServlet {
    IKhachHangService iKhachHangService = new KhachHangService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<KhachHang> khachHangList = iKhachHangService.display();
        request.setAttribute("khachHangList", khachHangList);
        request.getRequestDispatcher("/khach_hang.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
