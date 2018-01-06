package com.estore.controller;


import com.estore.model.BillingAddress;
import com.estore.model.Customer;
import com.estore.model.ShippingAddress;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {

    @RequestMapping("/register")
    public String registerCustomer(Model model){

        Customer customer = new Customer();
        BillingAddress billingAddress = new BillingAddress();
        ShippingAddress shippingAddress = new ShippingAddress();
        customer.setBillingAddress(billingAddress);
        customer.setShippingAddress(shippingAddress);

        model.addAttribute("customer", customer);

        return "registerCustomer";
    }

    /*@RequestMapping("/register")
    public String registerCustomerPost(@ModelAttribute("customer") Customer customer, Model model){

        customer.setEnabled(true);
        customerService.addCustomer(customer);

        return "registerCustomerSucces";
    }*/
}
