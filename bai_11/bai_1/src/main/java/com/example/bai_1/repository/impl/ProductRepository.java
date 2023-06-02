package com.example.bai_1.repository.impl;

import com.example.bai_1.model.Product;
import com.example.bai_1.repository.IProductRepository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ProductRepository implements IProductRepository {
    static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(0, "tin", 1000.0, "moi", "vovantin"));
        productList.add(new Product(10, "iphone", 1000.0, "moi", "vovantin"));
        productList.add(new Product(2, "iphone", 2000.0, "moi", "vovantin"));
        productList.add(new Product(3, "iphone", 3000.0, "moi", "vovantin"));
        productList.add(new Product(4, "iphone", 4000.0, "moi", "vovantin"));
        productList.add(new Product(5, "iphone", 5000.0, "moi", "vovantin"));
    }

    @Override
    public List<Product> display() {
        return productList;
    }

    @Override
    public void create(Product product) {
        productList.add(product);
    }

    @Override
    public void delete(int id) {
        productList.remove(id);
    }

    @Override
    public void update(int id, Product product) {
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getId() == id) {
                productList.set(i, product);
            }
        }
    }

    @Override
    public Product findId(int id) {
        Product product = null;
        for (Product p : productList) {
            if (p.getId() == id) {
                product = new Product(p.getId(), p.getName(), p.getPrice(), p.getDescribe(), p.getProducer());
            }
        }
        return product;
    }


}
