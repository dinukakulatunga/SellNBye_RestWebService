package com.example.demo.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;
import org.springframework.stereotype.Service;
import com.example.demo.model.Supplier;
import com.example.demo.repository.SupplierRepository;

@Service
@Transactional
public class SupplierService {

	//create object of SellerRepository to get crud to the saveMySeller method
	private final SupplierRepository supplierRepository;
	
	public SupplierService(SupplierRepository supplierRepository) {
		
		this.supplierRepository = supplierRepository;
	}
	
	
	
	//save data to the table
	public void saveMySupplier(Supplier supplier) {
		
		supplierRepository.save(supplier);
	}
	
	
	public List<Supplier> showAllSuppliers(){
		List<Supplier> suppliers = new ArrayList<Supplier>();
		for(Supplier supplier : supplierRepository.findAll()) {
			suppliers.add(supplier);
		}
		
		return suppliers;
		
	}
	
	public void deleteMySupplier(int id) {
		supplierRepository.deleteById(id);
	}
	
	public Optional<Supplier> editSupplier(int id) {
		
		 return supplierRepository.findById(id);
	}
	
	public Supplier findBycmpNameAndPassword(String cmpName, String password) {
		return supplierRepository.findBycmpNameAndPassword(cmpName, password);
	}
}
