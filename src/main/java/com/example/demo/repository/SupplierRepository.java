package com.example.demo.repository;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Supplier;

public interface SupplierRepository extends CrudRepository<Supplier, Integer>{

	//public Supplier findBycmpNameAndPassword(String cmpName, String password);

	public List<Supplier> findBycmpNameLike(String cmpName);

	
	

}