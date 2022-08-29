package com.buimanhthanh.mapper;

import com.buimanhthanh.dto.CategoriesDTO;
import com.buimanhthanh.dto.CustomersDTO;
import com.buimanhthanh.dto.ProductImagesDTO;
import com.buimanhthanh.dto.ProductsDTO;
import com.buimanhthanh.dto.StaffDTO;
import com.buimanhthanh.dto.UsersDTO;
import com.buimanhthanh.entity.Categories;
import com.buimanhthanh.entity.Customers;
import com.buimanhthanh.entity.ProductImages;
import com.buimanhthanh.entity.Products;
import com.buimanhthanh.entity.Staff;
import com.buimanhthanh.entity.Users;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class ConvertEntityToDto {

	public static ProductImagesDTO convertProductImagesDtos(ProductImages productImages) {
		ProductImagesDTO productImagesDTO = new ProductImagesDTO();
		productImagesDTO.setId(productImages.getId());
		productImagesDTO.setType(productImages.getType());
		productImagesDTO.setUrl(productImages.getUrl());
		productImagesDTO.setName(productImages.getProducts().getName());
		productImagesDTO.setThumbnail(productImages.getProducts().getThumbnail());
		productImagesDTO.setPrice(productImages.getProducts().getThumbnail());
		return productImagesDTO;
	}

	public static List<ProductImagesDTO> convertProductImagesDtos(List<ProductImages> productImages) {
		List<ProductImagesDTO> list = new ArrayList<>();
		productImages.forEach(p -> {
			list.add(convertProductImagesDtos(p));
		});
		return list;
	}

	public static ProductsDTO convertProductDto(Products products) {
		ProductsDTO productsDTO = new ProductsDTO();
		productsDTO.setId(products.getId());
		productsDTO.setName(products.getName());
		productsDTO.setPrice(products.getPrice());
		productsDTO.setDescription(products.getDescription());
		productsDTO.setRawQuantity(products.getRawQuantity());
		List<String> urlProduct = new ArrayList<>();
		List<String> urlSlide = new ArrayList<>();
		products.getProductImagesSet().forEach(img -> {
			if (img.getType().equals("product")) {
				urlProduct.add(img.getUrl());
			} else if (img.getType().equals("slide")) {
				urlSlide.add(img.getUrl());
			}
		});
		productsDTO.setUrl(urlProduct);
		productsDTO.setUrlSlide(urlSlide);
		productsDTO.setCategoryId(products.getCategories().getId());
		productsDTO.setCategoryName(products.getCategories().getName());
		return productsDTO;
	}

	public static List<ProductsDTO> convertProductDto(List<Products> products) {
		List<ProductsDTO> list = new ArrayList<>();
		products.forEach(p -> {
			list.add(convertProductDto(p));
		});
		return list;
	}

	public static CategoriesDTO convertCategoriesDto(Categories categories) {
		CategoriesDTO categoriesDTO = new CategoriesDTO();
		categoriesDTO.setId(categories.getId());
		categoriesDTO.setName(categories.getName());
		categoriesDTO.setDescription(categories.getDescription());
		categoriesDTO.setThumbnail(categories.getThumbnail());
		categoriesDTO.setLogo(categories.getLogo());
		return categoriesDTO;
	}

	public static List<CategoriesDTO> convertCategoriesDto(List<Categories> categories) {
		List<CategoriesDTO> categoriesDTOS = new ArrayList<>();
		categories.forEach(c -> categoriesDTOS.add(convertCategoriesDto(c)));
		return categoriesDTOS;
	}

	public static UsersDTO convertUsersDto(Users users) {
		if (users != null) {
			UsersDTO usersDTO = new UsersDTO();
			usersDTO.setUserName(users.getUserName());
			usersDTO.setPassword(users.getPassword());
			usersDTO.setEnabled4(users.getEnabled());
			Set<String> userRole = new HashSet<>();
			if (!users.getAuthoritiesSet().isEmpty()) {
				users.getAuthoritiesSet().forEach(auth -> userRole.add(auth.getAuthority()));
			}
			usersDTO.setUserRole(userRole);
			return usersDTO;
		} else {
			return null;
		}
	}

	public static List<UsersDTO> convertUsersDto(List<Users> users){
		if (!users.isEmpty()) {
			List<UsersDTO> list = new ArrayList<>();
			users.forEach(c -> list.add(convertUsersDto(c)));
			return list;
		}
		return null;
	}
	
	public static CustomersDTO convertCustomerDto(Customers customers) {
		if (customers != null) {
			CustomersDTO customersDTO = new CustomersDTO();
			customersDTO.setId(customers.getId());
			customersDTO.setEmail(customers.getEmail());
			customersDTO.setFullName(customers.getFullName());
			customersDTO.setPhone(customers.getPhone());
			customersDTO.setPassword(customers.getUsers().getPassword());
			customersDTO.setUserName(customers.getUsers().getUserName());
			customersDTO.setRank(customers.getRank());
			customersDTO.setShippingAddress(customers.getShippingAddress());
			customersDTO.setConfirmPassword(customers.getUsers().getConfirmPassword());
			return customersDTO;
		} else
			return null;
	}

	public static List<CustomersDTO> convertCustomerDto(List<Customers> customers) {
		if (!customers.isEmpty()) {
			List<CustomersDTO> list = new ArrayList<>();
			customers.forEach(c -> list.add(convertCustomerDto(c)));
			return list;
		}
		return null;
	}

	public static StaffDTO convertStaffDto(Staff staff) {
		if (staff != null) {
			StaffDTO staffDTO = new StaffDTO();
			staffDTO.setId(staff.getId());
			staffDTO.setEmail(staff.getEmail());
			staffDTO.setFullName(staff.getFullName());
			staffDTO.setPhone(staff.getPhone());
			staffDTO.setUserName(staff.getUsers().getUserName());
			staffDTO.setAddress(staff.getAddress());
			return staffDTO;
		} else
			return null;
	}
	
	public static List<StaffDTO> convertStaffDto(List<Staff> staff) {
		if (!staff.isEmpty()) {
			List<StaffDTO> list = new ArrayList<>();
			staff.forEach(c -> list.add(convertStaffDto(c)));
			return list;
		}
		return null;
	}

}
