package com.umindu.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.umindu.model.Customer;
import com.umindu.repository.CustomerRepository;

@Service
@Transactional
public class CustomerService {
	
	private final CustomerRepository customerRepository;
	
	public CustomerService(CustomerRepository customerRepository) {
		this.customerRepository=customerRepository;
	}
	
	public void saveMyCustomer(Customer customer) {
		customerRepository.save(customer);
	}

	public List<Customer> showAllCustomers(){
		List<Customer> customers = new ArrayList<Customer>();
		for(Customer customer:customerRepository.findAll()) {
			customers.add(customer);
		}
		
		return customers;
	}
	
	public void deleteMyCustomer(int id) {
		customerRepository.deleteById(id);
	}
	
	//public Optional<Customer> editCustomer(int id) {
		//return customerRepository.findById(id);
	//}
}
