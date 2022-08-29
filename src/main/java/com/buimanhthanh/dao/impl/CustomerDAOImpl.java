package com.buimanhthanh.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
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

	@Override
	public List<Customers> getAllCustomer() {
		return sessionFactory.getCurrentSession().createQuery("from Customers ",Customers.class).getResultList();
	}

	@Override
	public Customers getCustomers(Integer id) {
		Session session = sessionFactory.getCurrentSession();
		Query<Customers> theQuery = session.createQuery("from Customers as c where c.id =: i");
		theQuery.setParameter("i",id);
		return theQuery.getSingleResult();
	}

}
