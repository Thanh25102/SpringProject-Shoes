package com.buimanhthanh.service;

import java.util.List;

import com.buimanhthanh.dto.ProductsDTO;

public interface ProductsService {
    
	public List<ProductsDTO> getAllProduct();
  
	public List<ProductsDTO> getTopProductLatest();

	public List<ProductsDTO> getProductFromCategory(Integer idCategory);

	public List<ProductsDTO> getProductFromCategory(Integer idCategory, Integer page);

	public Long countTotalPage(Integer idCategory);

	public ProductsDTO getProduct(Integer id);

	public List<ProductsDTO> getProductFromCategoryLimit(Integer idCategory, Integer limit);
}
