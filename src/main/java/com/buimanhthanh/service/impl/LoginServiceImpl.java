package com.buimanhthanh.service.impl;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.buimanhthanh.CONSTANT;
import com.buimanhthanh.dto.CustomersDTO;
import com.buimanhthanh.entity.Authorities;
import com.buimanhthanh.entity.Customers;
import com.buimanhthanh.entity.Users;
import com.buimanhthanh.service.LoginService;
import com.buimanhthanh.service.UserService;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private UserService userService;
	
	@Override
	@Transactional
	public Boolean register(CustomersDTO customersDTO) {
		if(userService.getUsers(customersDTO.getUserName())==null) {
			try {
				Users users = new Users(customersDTO.getUserName(),customersDTO.getPassword(),true);
				Customers customers = new Customers(customersDTO.getEmail(),customersDTO.getFullName());
				Authorities authorities = new Authorities(customersDTO.getUserName(),CONSTANT.USER);
				customers.setUsers(users);
				authorities.setUsers(users);
				users.setCustomers(customers);
				users.setAuthoritiesSet(Set.of(authorities));
				
				userService.saveUsers(users);
				
				
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			return true;
		} else {
			return false;
		}
	}

}
