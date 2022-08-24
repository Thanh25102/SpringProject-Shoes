package com.buimanhthanh.dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.Pattern;

public class CustomersDTO {
	private Integer id;
	@Email(message = "{user.email.err}")
	private String email;
	private String shippingAddress;
	private String phone;
	@Pattern(regexp = "^[a-zA-Z]{4,}(?: [a-zA-Z]+){0,2}$", message = "{user.fullName.err}")
	private String fullName;
	private String address;
	private String rank;
	/*
	 * +Username consists of alphanumeric characters (a-zA-Z0-9), lowercase, or
	 * uppercase. Username allowed of the dot (.), underscore (_), and hyphen (-).
	 * +The dot (.), underscore (_), or hyphen (-) must not be the first or last
	 * character. +The dot (.), underscore (_), or hyphen (-) does not appear
	 * consecutively, e.g., java..regex +The number of characters must be between 5
	 * to 20.
	 */
	@Pattern(regexp = "^[a-zA-Z0-9]([._-](?![._-])|[a-zA-Z0-9]){3,18}[a-zA-Z0-9]$", message = "{user.userName.err}")
	private String userName;
	@Pattern(regexp = "\"^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$\"",message = "{user.password.err}")
	private String password;

	private String confirmPassword;
	
	public Boolean isValidPasswordConfirm() {
		return password.equals(confirmPassword);
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getShippingAddress() {
		return this.shippingAddress;
	}

	public void setShippingAddress(String shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getFullName() {
		return this.fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRank() {
		return this.rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
}
