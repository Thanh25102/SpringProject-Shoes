package com.buimanhthanh.service;

import java.util.List;

import com.buimanhthanh.dto.ProductImagesDTO;

public interface ProductImagesService {
	public List<ProductImagesDTO> getAllProductImage();
	public List<ProductImagesDTO> getAllProductImageTypeEqualSlide();

}
