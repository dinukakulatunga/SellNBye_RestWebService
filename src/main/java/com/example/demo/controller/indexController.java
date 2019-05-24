package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.model.Admin;
import com.example.demo.model.Supplier;
import com.example.demo.services.AdminService;
import com.example.demo.services.SupplierService;

@Controller
public class indexController {

	@Autowired
	private SupplierService supplierService;

	@Autowired
	private AdminService AdminService;

	// index.jsp
	@RequestMapping("/index")
	public String index() {
		return "index";
	}

	// login.jsp
	@RequestMapping("/Login")
	public String Login() {
		return "Login";
	}

	// logout
	@RequestMapping("/Logout")
	public String Logout() {
		return "index";
	}

	// regform.jsp
	@RequestMapping("/regform")
	public String regform() {
		return "regform";
	}

	// updatesupplier.jsp
//	@RequestMapping("/updatesupplier")
//	public String updatesupplier() {
//		return "updatesupplier";
//	}

	// admin.jsp
	@RequestMapping("/admin")
	public String admin() {
		return "admin";
	}

	// addsupplier.jsp
	@RequestMapping("/addsupplier")
	public String addsupplier() {
		return "addsupplier";
	}

	// save a supplier
	@PostMapping("/save-supplier")
	public String supplierRegistration(Supplier supplier, BindingResult bindingResult, HttpServletRequest request) {
		supplierService.saveMySupplier(supplier);
		return "admin";
	}

	// get all suppliers
	@GetMapping("/show-suppliers")
	public String showAllSupplier(HttpServletRequest request) {
		request.setAttribute("suppliers", supplierService.showAllSuppliers());
		return "supplier";
	}

	// delete a supplier
	@RequestMapping("/delete-supplier")
	public String deleteSupplier(@RequestParam int id, HttpServletRequest request) {
		supplierService.deleteMySupplier(id);
		request.setAttribute("suppliers", supplierService.showAllSuppliers());
		return "supplier";
	}

	// edit a supplier
	@RequestMapping("/edit-supplier")
	public String editSupplier(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("supplier", supplierService.editSupplier(id));
		return "updatesupplier";
	}

	// search supplier
	@GetMapping("/search-supplier")
	public String searchSupplier(@RequestParam String cmpName, HttpServletRequest request) {
		request.setAttribute("suppliers", supplierService.searchSupplier(cmpName));
		return "supplier";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	// admin login
	@RequestMapping("/login-admin")
	public String loginAdmin(@ModelAttribute Admin admin, HttpServletRequest request) {
		if (AdminService.findByUsernameAndPassword(admin.getUsername(), admin.getPassword()) != null) {
			return "homepage";
		} else {
			request.setAttribute("error", "Invalid Username or Password!!");
			return "login";
		}

	}

}
