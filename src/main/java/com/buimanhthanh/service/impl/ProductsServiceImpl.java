package com.buimanhthanh.service.impl;

import java.util.List;

import com.buimanhthanh.dto.ProductImagesDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.buimanhthanh.dao.ProductsDAO;
import com.buimanhthanh.dto.ProductsDTO;
import com.buimanhthanh.mapper.ConvertEntityToDto;
import com.buimanhthanh.service.ProductsService;

@Service
public class ProductsServiceImpl implements ProductsService {
	@Autowired
	private ProductsDAO productsDAO;


	@Override
	@Transactional
	public List<ProductsDTO> getAllProduct() {
		return ConvertEntityToDto.convertProductDto(productsDAO.getAllProduct());
	}

	@Override
	@Transactional
	public List<ProductsDTO> getTopProductLatest() {
		return ConvertEntityToDto.convertProductDto(productsDAO.getTopProductLatest());
	}

	@Override
	@Transactional
	public List<ProductsDTO> getProductFromCategory(Integer idCategory) {
		return ConvertEntityToDto.convertProductDto(productsDAO.getProductFromCategory(idCategory));
	}

	@Override
	@Transactional
	public List<ProductsDTO> getProductFromCategory(Integer idCategory, Integer page) {
		return ConvertEntityToDto.convertProductDto(productsDAO.getProductFromCategory(idCategory,page));
	}

	@Override
	@Transactional
	public Long countTotalPage(Integer idCategory) {
		return productsDAO.countTotalPage(idCategory);
	}

	@Override
	@Transactional
	public ProductsDTO getProduct(Integer id) {
		return ConvertEntityToDto.convertProductDto(productsDAO.getProduct(id));
	}

	@Override
	@Transactional
	public List<ProductsDTO> getProductFromCategoryLimit(Integer idCategory, Integer limit) {
		return ConvertEntityToDto.convertProductDto(productsDAO.getProductFromCategoryLimit(idCategory,limit));
	}

	@Override
	@Transactional
	public List<ProductImagesDTO> getProductImages(Integer id) {
		return ConvertEntityToDto.convertProductImagesDtos(productsDAO.getProduct(id));
	}


}
