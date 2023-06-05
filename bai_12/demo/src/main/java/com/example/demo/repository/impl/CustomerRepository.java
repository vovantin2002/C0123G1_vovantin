package com.example.demo.repository.impl;

import com.example.demo.model.Customer;
import com.example.demo.repository.BaseRepository;
import com.example.demo.repository.ICustomerRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    @Override
    public List<Customer> display() {
        Connection connection=BaseRepository.getConnection();
        List<Customer>customerList=new ArrayList<>();
        try {
            Statement statement=connection.createStatement();
            ResultSet resultSet=statement.executeQuery("SELECT * FROM laptop_management.customers;");
            while (resultSet.next()){
                int customerId =resultSet.getInt("customer_id");
                String customerName=resultSet.getString("customer_name");
                String email=resultSet.getString("email");
                String phoneNumber=resultSet.getString("phone_number");
                String address=resultSet.getString("address");
                int accountId=resultSet.getInt("account_id");
                String createAt=resultSet.getString("createAt");
                String updateAt=resultSet.getString("updateAt");
                customerList.add(new Customer(customerId,customerName,email,phoneNumber,address,accountId,createAt,updateAt));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        return customerList;
    }
}
