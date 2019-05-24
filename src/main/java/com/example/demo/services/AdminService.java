package com.example.demo.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;
import org.springframework.stereotype.Service;

import com.example.demo.model.Admin;
import com.example.demo.model.Supplier;
import com.example.demo.repository.AdminRepository;
import com.example.demo.repository.SupplierRepository;

@Service
@Transactional
public class AdminService {

	// create object of SellerRepository to get CRUD to the saveMySeller method
	private final AdminRepository adminRepository;

	public AdminService(AdminRepository adminRepository) {

		this.adminRepository = adminRepository;
	}
	
	//login method
	public Admin findByUsernameAndPassword(String username, String password) {
		
		return adminRepository.findByUsernameAndPassword(username, password);
	}
	
}