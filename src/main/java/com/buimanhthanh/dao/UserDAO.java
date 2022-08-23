package com.buimanhthanh.dao;

import com.buimanhthanh.entity.Users;

public interface UserDAO {
	Users getUser(String userName);
	void saveUser(Users users);
}
