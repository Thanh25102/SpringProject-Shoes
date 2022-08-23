package com.buimanhthanh.dao.impl;

import java.util.List;

import com.buimanhthanh.CONSTANT;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.buimanhthanh.entity.Products;

@Repository
public class ProductsDAOImpl implements com.buimanhthanh.dao.ProductsDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Products> getAllProduct() {
		Session session = sessionFactory.getCurrentSession();
		Query<Products> theQuery = session.createQuery("from Products", Products.class);
		return theQuery.getResultList();
	}

	@Override
	public List<Products> getTopProductLatest() {
		Session session = sessionFactory.getCurrentSession();
		Query<Products> theQuery = session.createQuery("from Products AS p ORDER BY p.id desc", Products.class);
		return theQuery.getResultList();
	}

	@Override
	public List<Products> getProductFromCategory(Integer idCategories) {
		Session session =  sessionFactory.getCurrentSession();
		Query<Products> theQuery = session.createQuery("from Products as c where c.categories.id =: i",Products.class);
		theQuery.setParameter("i",idCategories);
		return theQuery.getResultList();
	}

	@Override
	public List<Products> getProductFromCategoryLimit(Integer idCategories, Integer limit) {
		Session session =  sessionFactory.getCurrentSession();
		Query<Products> theQuery = session.createQuery("from Products as c where c.categories.id =: i ",Products.class);
		theQuery.setParameter("i",idCategories);
		theQuery.setFirstResult(0);
		theQuery.setMaxResults(limit);
		return theQuery.getResultList();
	}

	@Override
	public List<Products> getProductFromCategory(Integer idCategories, Integer page) {

		Session session =  sessionFactory.getCurrentSession();
		Query<Products> theQuery =
				session.createQuery("from Products as c where c.categories.id =:i order by  c.id" , Products.class);
		theQuery.setParameter("i",idCategories);
		theQuery.setFirstResult((page-1) * CONSTANT.PAGE_SIZE);
		theQuery.setMaxResults(CONSTANT.PAGE_SIZE);
		return theQuery.getResultList();
	}

	@Override
	public Products getProduct(Integer id) {
		Session session = sessionFactory.getCurrentSession();
		Query<Products> theQuery = session.createQuery("from Products p where p.id =: i",Products.class);
		theQuery.setParameter("i",id);
		return theQuery.getSingleResult();
	}

	@Override
	public Long countTotalPage(Integer idCategory) {
		Long totalRecords =  countProductFromCategory(idCategory);
		Long lastPageNumber;
		if (totalRecords % CONSTANT.PAGE_SIZE == 0) {
			lastPageNumber = totalRecords /  CONSTANT.PAGE_SIZE;
		} else {
			lastPageNumber = (totalRecords /  CONSTANT.PAGE_SIZE) + 1;
		}
		return lastPageNumber;
	}

	@Override
	public Long countProductFromCategory(Integer idCategory) {
		Session session =  sessionFactory.getCurrentSession();
		Query<Long> countQuery = session.createQuery("SELECT COUNT (e.id) from " +
				"Products e  where e.categories.id =: i", Long.class);
		countQuery.setParameter("i",idCategory);
		return countQuery.getSingleResult();
	}


}
