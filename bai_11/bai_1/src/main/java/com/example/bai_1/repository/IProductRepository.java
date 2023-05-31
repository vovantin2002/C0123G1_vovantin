package com.example.bai_1.repository;

import com.example.bai_1.model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> display();
    void create(Product product);
    void delete(int id);
    void update(int id, Product product);
}
