package com.umindu.repository;

import org.springframework.data.repository.CrudRepository;

import com.umindu.model.Customer;

public interface CustomerRepository extends CrudRepository<Customer, Integer> {

}
