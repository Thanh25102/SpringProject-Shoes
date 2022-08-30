package com.buimanhthanh.service;

import java.util.List;

import com.buimanhthanh.dto.ProductImagesDTO;
import com.buimanhthanh.dto.ProductsDTO;

public interface ProductsService {
    
	List<ProductsDTO> getAllProduct();
  
	List<ProductsDTO> getTopProductLatest();

	List<ProductsDTO> getProductFromCategory(Integer idCategory);

	List<ProductsDTO> getProductFromCategory(Integer idCategory, Integer page);

	public Long countTotalPage(Integer idCategory);

	public ProductsDTO getProduct(Integer id);

	List<ProductsDTO> getProductFromCategoryLimit(Integer idCategory, Integer limit);

	List<ProductImagesDTO> getProductImages(Integer id);
}
