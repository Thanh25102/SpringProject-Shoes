package com.buimanhthanh.dto;

import java.util.List;

public class ProductsDTO {
	private Integer id;
	private String name;
	private Double price;
	private String description;
	private String thumbnail;
	private Integer categoryId;

	private String categoryName;

	private Integer rawQuantity;

	private List<String> url;
	private List<String> urlSlide;

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public List<String> getUrl() {
		return url;
	}

	public void setUrl(List<String> url) {
		this.url = url;
	}

	public List<String> getUrlSlide() {
		return urlSlide;
	}

	public void setUrlSlide(List<String> urlSlide) {
		this.urlSlide = urlSlide;
	}

	private List<String> productImages;

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getThumbnail() {
		return this.thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public Integer getCategoryId() {
		return this.categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public Integer getRawQuantity() {
		return this.rawQuantity;
	}

	public void setRawQuantity(Integer rawQuantity) {
		this.rawQuantity = rawQuantity;
	}

	public List<String> getProductImages() {
		return productImages;
	}

	public void setProductImages(List<String> productImages) {
		this.productImages = productImages;
	}

	@Override
	public String toString() {
		return "ProductsDTO{" +
				"id=" + id +
				", name='" + name + '\'' +
				", price=" + price +
				", description='" + description + '\'' +
				", thumbnail='" + thumbnail + '\'' +
				", categoryId=" + categoryId +
				", rawQuantity=" + rawQuantity +
				", url=" + url +
				", urlSlide=" + urlSlide +
				", productImages=" + productImages +
				'}';
	}
}
