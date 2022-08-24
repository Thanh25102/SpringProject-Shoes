package com.buimanhthanh.service;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.buimanhthanh.dto.UsersDTO;
import com.buimanhthanh.entity.Users;

public interface UserService extends UserDetailsService {
	UsersDTO getUsers(String userName);

	void saveUsers(Users users);
	
	List<UsersDTO> getAllUsers();
}
