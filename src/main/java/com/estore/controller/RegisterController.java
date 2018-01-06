package com.estore.controller;


import com.estore.model.BillingAddress;
import com.estore.model.Customer;
import com.estore.model.ShippingAddress;
import com.estore.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;

@Controller
public class RegisterController {

    @Autowired
    CustomerService customerService;

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String registerCustomer( Model model){

        Customer customer = new Customer();
        BillingAddress billingAddress = new BillingAddress();
        ShippingAddress shippingAddress = new ShippingAddress();
        customer.setBillingAddress(billingAddress);
        customer.setShippingAddress(shippingAddress);

        model.addAttribute("customer", customer);

        return "registerCustomer";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerCustomerPost(@ModelAttribute("customer") Customer customer,BindingResult bindingResult, Model model){

        customer.setEnabled(true);
        customerService.addCustomer(customer);
        model.addAttribute("customer", customer);

        return "registerCustomerSucces";
    }
}
