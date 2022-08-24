package com.buimanhthanh.entity;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "authorities")
public class Authorities implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "authority")
	private String authority;

	@Id
	@ManyToOne
	@JoinColumn(name = "user_name")
	private Users users;

	public Authorities(String authority) {
		this.authority = authority;
	}
	public Authorities() {
		// TODO Auto-generated constructor stub
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getAuthority() {
		return this.authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}
}
