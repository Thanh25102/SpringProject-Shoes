package com.buimanhthanh.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.buimanhthanh.dao.UserDAO;
import com.buimanhthanh.entity.Users;

@Repository
public class UserDAOImpl implements UserDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Users getUser(String userName) {
		Session session =  sessionFactory.getCurrentSession();
		Query<Users> theQuery = session.createQuery("from Users as u where u.userName =: i",Users.class);
		theQuery.setParameter("i",userName);
		return theQuery.uniqueResult();
	}

	@Override
	public void saveUser(Users users) {
		Session session =  sessionFactory.getCurrentSession();
		session.save(users);
	}

	@Override
	public List<Users> getAllUser() {
		return sessionFactory.getCurrentSession().createQuery(" from Users ",Users.class).getResultList();
	}
	

}
