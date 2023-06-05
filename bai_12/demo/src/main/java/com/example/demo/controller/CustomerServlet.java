package com.example.demo.controller;

import com.example.demo.model.Customer;
import com.example.demo.service.ICustomerService;
import com.example.demo.service.impl.CustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    ICustomerService customerService=new CustomerService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action){
            case "create":
                break;
            default:
                showList(request,response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action=request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action){
            case "create":
                break;
            default:
                showList(request,response);

        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList=customerService.display();
        request.setAttribute("customerList",customerList);
        try {
            request.getRequestDispatcher("view/list.jsp").forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
