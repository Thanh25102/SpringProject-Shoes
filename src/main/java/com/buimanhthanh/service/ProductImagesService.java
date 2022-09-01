package com.buimanhthanh.service;

import java.util.List;

import com.buimanhthanh.dto.ProductImagesDTO;

public interface ProductImagesService {
	List<ProductImagesDTO> getAllProductImage();
	List<ProductImagesDTO> getAllProductImageTypeEqualSlide();
	ProductImagesDTO getProductImages(Integer id);

}
