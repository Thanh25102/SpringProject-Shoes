package com.buimanhthanh.service;

import java.util.List;

import com.buimanhthanh.dto.CustomersDTO;
import com.buimanhthanh.entity.Customers;

public interface CustomerService{
	void saveCustomer(Customers customers);
	List<CustomersDTO> getAllCustomer();

	CustomersDTO getCustomer(Integer id);
}
