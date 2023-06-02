package com.example.bai_1.service;

import com.example.bai_1.model.Product;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface IProductService {
    List<Product> display();

    void create(HttpServletRequest request);

    void delete(HttpServletRequest request);

    List<Product> findByName(HttpServletRequest request);

    void update(Product product, int id);

    Product findId(int id);
}
