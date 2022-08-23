package com.buimanhthanh.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buimanhthanh.dao.AuthoritiesDAO;
import com.buimanhthanh.entity.Authorities;

@Service
public class AuthoritiesDAOImpl implements AuthoritiesDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveAuthorites(Authorities authorities) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(authorities);
	}

}
