package com.umindu.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.umindu.model.Customer;
import com.umindu.services.CustomerService;

@Controller
public class ApplicationController {
	 
	@Autowired
	CustomerService customerService; 
	
	@RequestMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode","MODE_HOME");
		return "welcomepage";
	}
	
	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "welcomepage";
	}

	@PostMapping("/save-customer")
	public String registerCustomer(@ModelAttribute Customer customer,BindingResult bindingResult,HttpServletRequest request) {
		customerService.saveMyCustomer(customer);
		request.setAttribute("mode","MODE_HOME");
		return "welcomepage";
	}
	
	@GetMapping("/show-customers")
	public String showAllCustomers(HttpServletRequest request) {
		request.setAttribute("customers", customerService.showAllCustomers());
		request.setAttribute("mode", "ALL_CUSTOMERS");
		return "welcomepage";
	}
	
	@RequestMapping("/delete-customer")
	public String deleteCustomer(@RequestParam int id,HttpServletRequest request) {
		customerService.deleteMyCustomer(id);
		request.setAttribute("customers", customerService.showAllCustomers());
		request.setAttribute("mode", "ALL_CUSTOMERS");
		return "welcomepage"; 
	}
	
	//@RequestMapping("/edit-customer")
	//public String editCustomer(@RequestParam int id,HttpServletRequest request) {
		//request.setAttribute("customer",customerService.editCustomer(id));
	//	request.setAttribute("mode", "MODE_UPDATE");
		//return "welcomepage";
	//}
}
















