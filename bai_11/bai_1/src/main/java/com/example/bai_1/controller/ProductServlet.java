package com.example.bai_1.controller;

import com.example.bai_1.model.Product;
import com.example.bai_1.service.impl.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/product")
public class ProductServlet extends HttpServlet {
    ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                request.getRequestDispatcher("product/create.jsp").forward(request, response);
                break;
            case "delete":
                request.getRequestDispatcher("product/delete.jsp").forward(request, response);
                break;
            case "search":
                request.getRequestDispatcher("product/search.jsp").forward(request, response);
                break;

            default:
                display(request, response);
                break;
        }
    }


    private void createProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        productService.create(request);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    private void display(HttpServletRequest request, HttpServletResponse response) {
        List<Product> productList = productService.display();
        request.setAttribute("productList", productList);

        RequestDispatcher dispatcher = request.getRequestDispatcher("product/display.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createProduct(request, response);
                break;
            case "delete":
                deleteProduct(request, response);
                break;
            case "search":
                findByName(request, response);
                break;
            default:
                display(request, response);
                break;
        }
    }

    private void findByName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = productService.findByName(request);
        System.out.println(list);
        request.setAttribute("list", list);
        request.getRequestDispatcher("product/search.jsp").forward(request, response);
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        productService.delete(request);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
