package com.buimanhthanh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.buimanhthanh.dao.UserDAO;
import com.buimanhthanh.dto.UsersDTO;
import com.buimanhthanh.entity.Users;
import com.buimanhthanh.mapper.ConvertEntityToDto;
import com.buimanhthanh.service.UserService;


@Service("userDetailService")
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDAO userDAO;

	@Override
	@Transactional
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UsersDTO user = this.getUsers(username);
		if(user == null) {
			throw new UsernameNotFoundException("ncc");
		}
		return user;
	}

	@Override
	@Transactional
	public UsersDTO getUsers(String userName) {
		Users user = userDAO.getUser(userName);
		return ConvertEntityToDto.convertUsersDto(user);
	}

	@Override
	@Transactional
	public void saveUsers(Users users) {
		userDAO.saveUser(users);
	}

	@Override
	@Transactional
	public List<UsersDTO> getAllUsers() {
		return ConvertEntityToDto.convertUsersDto(userDAO.getAllUser());
	}

	
}
