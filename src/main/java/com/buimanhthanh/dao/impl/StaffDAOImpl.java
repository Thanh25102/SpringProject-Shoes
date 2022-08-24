package com.buimanhthanh.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.buimanhthanh.dao.StaffDAO;
import com.buimanhthanh.entity.Staff;

@Repository
public class StaffDAOImpl implements StaffDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Staff> getAllStaff() {
		return sessionFactory.getCurrentSession().createQuery(" from Staff",Staff.class).getResultList();
	}

}
