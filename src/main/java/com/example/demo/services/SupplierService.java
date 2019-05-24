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

	// create object of SellerRepository to get CRUD to the saveMySeller method
	private final SupplierRepository supplierRepository;

	public SupplierService(SupplierRepository supplierRepository) {

		this.supplierRepository = supplierRepository;
	}

	// save data to the table
	public void saveMySupplier(Supplier supplier) {

		supplierRepository.save(supplier);
	}

	// view all suppliers
	public List<Supplier> showAllSuppliers() {
		List<Supplier> suppliers = new ArrayList<Supplier>();
		for (Supplier supplier : supplierRepository.findAll()) {
			suppliers.add(supplier);
		}

		return suppliers;

	}

	// delete a supplier
	public void deleteMySupplier(int id) {
		supplierRepository.deleteById(id);
	}

	// edit supplier
	public Supplier editSupplier(int id) {

		Optional<Supplier> sp = supplierRepository.findById(id);
		if (sp.isPresent()) {
			return sp.get();
		} else {
			return null;
		}
	}

	// search supplier
	public List <Supplier> searchSupplier(String cmpName) {

		return supplierRepository.findBycmpNameLike("%"+cmpName+"%");
		
	}

}
