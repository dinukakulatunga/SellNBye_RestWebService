package com.example.demo.repository;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Admin;

public interface AdminRepository extends CrudRepository<Admin, Integer>{

	public Admin findByUsernameAndPassword(String username, String password);

	
	

}