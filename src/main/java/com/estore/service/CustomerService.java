package com.estore.service;

import com.estore.model.Customer;
import org.springframework.validation.BindingResult;

import java.util.List;

public interface CustomerService {

    void addCustomer(Customer customer);

    Customer getCustomerById(int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);
}
