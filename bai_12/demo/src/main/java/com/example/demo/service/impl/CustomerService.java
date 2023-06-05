package com.example.demo.service.impl;

import com.example.demo.model.Customer;
import com.example.demo.repository.ICustomerRepository;
import com.example.demo.repository.impl.CustomerRepository;
import com.example.demo.service.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    ICustomerRepository customerRepository=new CustomerRepository();
    @Override
    public List<Customer> display() {
        return customerRepository.display();
    }
}
