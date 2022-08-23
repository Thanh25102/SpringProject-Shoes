package com.buimanhthanh.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.buimanhthanh.dao.AuthoritiesDAO;
import com.buimanhthanh.entity.Authorities;
import com.buimanhthanh.service.AuthoritiesService;

@Service
public class AuthoritiesServiceImpl implements AuthoritiesService{

	@Autowired
	private AuthoritiesDAO authoritiesDAO;
	
	@Override
	@Transactional
	public void saveAuthorities(Authorities authorities) {
		authoritiesDAO.saveAuthorites(authorities);
	}

	
	
}
