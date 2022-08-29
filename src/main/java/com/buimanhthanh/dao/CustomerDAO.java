package com.buimanhthanh.dao;

import java.util.List;

import com.buimanhthanh.entity.Customers;

public interface CustomerDAO {

	void saveCustomer(Customers customers);
	
	List<Customers> getAllCustomer();

	Customers getCustomers(Integer id);
}
