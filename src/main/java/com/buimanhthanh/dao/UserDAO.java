package com.buimanhthanh.dao;

import java.util.List;

import com.buimanhthanh.entity.Users;

public interface UserDAO {
	Users getUser(String userName);
	void saveUser(Users users);
	List<Users> getAllUser();
}
