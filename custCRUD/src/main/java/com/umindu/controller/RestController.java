package com.umindu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.umindu.model.Customer;
import com.umindu.services.CustomerService;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/")
	public String hello() {
		return "This is Home page";
	}

	@GetMapping("/savecustomer")
	public String saveCustomer(@RequestParam String firstname,@RequestParam String lastname,@RequestParam String email,@RequestParam int age,@RequestParam String password) {
		Customer customer = new Customer(firstname,lastname,email,age,password);
		customerService.saveMyCustomer(customer);
		return "Customer Saved";
	}
}
