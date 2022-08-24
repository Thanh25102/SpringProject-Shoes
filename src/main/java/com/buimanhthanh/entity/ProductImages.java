package com.buimanhthanh.entity;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "product_images")
public class ProductImages implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;

	@ManyToOne()
	@JoinColumn(name = "product_id")
	private Products products;

	@Column(name = "url")
	private String url;

	@Column(name = "type")
	private String type;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Products getProducts() {
		return products;
	}

	public void setProducts(Products products) {
		this.products = products;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	@Override
	public String toString() {
		return "ProductImages [id=" + id + ", products=" + products + ", url=" + url + ", type=" + type + "]";
	}
}
