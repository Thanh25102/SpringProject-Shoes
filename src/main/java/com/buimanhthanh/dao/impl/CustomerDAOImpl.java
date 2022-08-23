package com.buimanhthanh.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.buimanhthanh.dao.CustomerDAO;
import com.buimanhthanh.entity.Customers;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveCustomer(Customers customers) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(customers);
	}

}
