package com.example.demo.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Supplier;
import com.example.demo.services.SupplierService;

@org.springframework.web.bind.annotation.RestController
public class RestController {

	@Autowired
	private SupplierService supplierService;
	
	@GetMapping("/")
	public String home() {
		return "This is homepage";
	}
	
	//seller saving method
//	@GetMapping("/savesupplier")
//	public String saveSupplier(@RequestParam String fname, @RequestParam String lname) {
//		Supplier supplier = new Supplier(fname, lname);
//		supplierService.saveMySupplier(supplier);
//		return "Supplier Saved";
//	}
}
