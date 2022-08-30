package com.buimanhthanh.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.buimanhthanh.dao.ProductImagesDAO;
import com.buimanhthanh.entity.ProductImages;

@Repository
public class ProductImagesDAOImpl implements ProductImagesDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<ProductImages> getAllProductImage() {
		Session session = sessionFactory.getCurrentSession();
		Query<ProductImages> theQuery = session.createQuery("from ProductImages", ProductImages.class);

		return theQuery.getResultList();
	}

	@Override
	public List<ProductImages> getAllProductImageTypeEqualSlide() {
		Session session = sessionFactory.getCurrentSession();
		Query<ProductImages> theQuery = session.createQuery("from ProductImages pi where pi.type =:s", ProductImages.class);
		theQuery.setParameter("s", "slide");
		
		return theQuery.getResultList();
	}


}
