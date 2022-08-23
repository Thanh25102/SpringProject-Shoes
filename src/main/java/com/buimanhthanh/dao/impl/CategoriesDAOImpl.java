package com.buimanhthanh.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.buimanhthanh.dao.CategoriesDAO;
import com.buimanhthanh.entity.Categories;

@Repository
public class CategoriesDAOImpl implements CategoriesDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Categories> getAllCategories() {
        return sessionFactory.getCurrentSession().createQuery("from Categories ",Categories.class).getResultList();
    }


}
