package com.example.bai_1.service.impl;

import com.example.bai_1.model.Product;
import com.example.bai_1.repository.impl.ProductRepository;
import com.example.bai_1.service.IProductService;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService {
    ProductRepository productRepository = new ProductRepository();

    @Override
    public List<Product> display() {
        return productRepository.display();
    }

    @Override
    public void create(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        Double price = Double.valueOf(request.getParameter("price"));
        String describe = request.getParameter("describe");
        String producer = request.getParameter("producer");
        productRepository.create(new Product(id, name, price, describe, producer));
    }

    @Override
    public void delete(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        productRepository.delete(id);
    }


    @Override
    public List<Product> findByName(HttpServletRequest request) {
        List<Product> productList = display();
        List<Product> list = new ArrayList<>();
        String name = request.getParameter("name");
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getName().equals(name)) {
                list.add(productList.get(i));
            }
        }
        return list;
    }

    @Override
    public void update(Product product, int id) {

        productRepository.update(id, product);
    }

    @Override
    public Product findId(int id) {
        return productRepository.findId(id);
    }
}
