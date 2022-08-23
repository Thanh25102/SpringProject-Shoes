package com.buimanhthanh.service.impl;

import java.util.List;

import com.buimanhthanh.mapper.ConvertEntityToDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.buimanhthanh.dao.ProductImagesDAO;
import com.buimanhthanh.dto.ProductImagesDTO;
import com.buimanhthanh.service.ProductImagesService;

@Service
public class ProductImagesServiceImpl implements ProductImagesService {

	@Autowired
	private ProductImagesDAO productImagesDAO;

	@Override
	@Transactional
	public List<ProductImagesDTO> getAllProductImage() {
		return ConvertEntityToDto.convertProductImagesDtos(productImagesDAO.getAllProductImage());
	}

	@Override
	@Transactional
	public List<ProductImagesDTO> getAllProductImageTypeEqualSlide() {
		return ConvertEntityToDto.convertProductImagesDtos(productImagesDAO.getAllProductImageTypeEqualSlide());
	}
}
