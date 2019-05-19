package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.model.Supplier;
import com.example.demo.services.SupplierService;

@Controller
public class indexController {

	@Autowired
	private SupplierService supplierService;
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/Login")
	public String Login() {
		return "Login";
	}
	
	@RequestMapping("/regform")
	public String regform() {
		return "regform";
	}
	
	@RequestMapping("/updatesupplier")
	public String updatesupplier() {
		return "updatesupplier";
	}
	
	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}
	
	@RequestMapping("/addsupplier")
	public String addsupplier() {
		return "addsupplier";
	}
	
	@PostMapping("/save-supplier")
	public String supplierRegistration(Supplier supplier, BindingResult bindingResult, HttpServletRequest request) {
		supplierService.saveMySupplier(supplier);
		return "regform";
	}
	
	@GetMapping("/show-suppliers")
	public String showAllSupplier(HttpServletRequest request) {
		request.setAttribute("suppliers", supplierService.showAllSuppliers());
		return "supplier";
	}
	
	@RequestMapping("/delete-supplier")
	public String deleteSupplier(@RequestParam int id, HttpServletRequest request) {
		supplierService.deleteMySupplier(id);
		request.setAttribute("suppliers", supplierService.showAllSuppliers());
		return "supplier";
	} 
	
	@RequestMapping("/edit-supplier")
	public String editSupplier(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("supplier", supplierService.editSupplier(id));
		return "updatesupplier";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/login-admin")
	public String loginSupplier(@ModelAttribute Supplier supplier, HttpServletRequest request) {
		if(supplierService.findBycmpNameAndPassword(supplier.getCmpName(), supplier.getPassword())!=null) {
			return "admin";	
		}else {
			request.setAttribute("error", "Invalid Username or Password!!");
			return "login";	
		}
		
	}
	
}
