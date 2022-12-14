package com.buimanhthanh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.buimanhthanh.dao.CustomerDAO;
import com.buimanhthanh.dto.CustomersDTO;
import com.buimanhthanh.entity.Customers;
import com.buimanhthanh.mapper.ConvertEntityToDto;
import com.buimanhthanh.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO customerDAO;
	
	@Override
	@Transactional
	public void saveCustomer(Customers customers) {
		customerDAO.saveCustomer(customers);;
	}

	@Override
	@Transactional
	public List<CustomersDTO> getAllCustomer() {
		return ConvertEntityToDto.convertCustomerDto(customerDAO.getAllCustomer());
	}

	@Override
	@Transactional
	public CustomersDTO getCustomer(Integer id) {
		return ConvertEntityToDto.convertCustomerDto(customerDAO.getCustomers(id));
	}

}
