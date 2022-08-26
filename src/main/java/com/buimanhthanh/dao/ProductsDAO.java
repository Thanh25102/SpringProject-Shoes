package com.buimanhthanh.dao;

import java.util.List;

import com.buimanhthanh.entity.Products;


public interface ProductsDAO {
    
	public List<Products> getAllProduct();
  
	public List<Products> getTopProductLatest();

	public List<Products> getProductFromCategory(Integer idCategories);

	public List<Products> getProductFromCategoryLimit(Integer idCategories,Integer limit);

	public List<Products> getProductFromCategory(Integer idCategories, Integer page);

	public Products getProduct(Integer id);

	public Long countTotalPage(Integer idCategory);

	public Long countProductFromCategory(Integer idCategory);

	public void addProduct(Products products);

}
