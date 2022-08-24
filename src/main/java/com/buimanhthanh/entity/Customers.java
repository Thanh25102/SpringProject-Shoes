package com.buimanhthanh.entity;

import javax.persistence.*;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "customers")
public class Customers implements Serializable{
    private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "email")
    private String email;

    @Column(name = "shipping_address")
    private String shippingAddress;

    @Column(name = "phone")
    private String phone;

    @Column(name = "full_name")
    private String fullName;

    @Column(name = "address")
    private String address;

    @Column(name = "rank_")
    private String rank;

    @OneToOne
    @JoinColumn(name = "user_name")
    private Users users;

    @OneToMany(mappedBy = "customers")
    private Set<Carts> cartsSet;

    @OneToMany(mappedBy = "customers")
    private Set<Orders> ordersSet;
    
    
    public Customers() {
		// TODO Auto-generated constructor stub
	}
    public Customers(String email, String fullName) {
		this.email = email;
		this.fullName = fullName;
	}

	public Set<Orders> getOrdersSet() {
        return ordersSet;
    }

    public void setOrdersSet(Set<Orders> ordersSet) {
        this.ordersSet = ordersSet;
    }

    public Set<Carts> getCartsSet() {
        return cartsSet;
    }

    public void setCartsSet(Set<Carts> cartsSet) {
        this.cartsSet = cartsSet;
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


    public Users getUsers() {
        return users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }
    public void addCarts(Carts tempCarts){
        if(cartsSet == null){
            cartsSet = new HashSet<Carts>();
        }
        cartsSet.add(tempCarts);
        tempCarts.setCustomers(this);
    }
    public void addOrders(Orders tempOrders){
        if(ordersSet == null){
            ordersSet = new HashSet<Orders>();
        }
        ordersSet.add(tempOrders);
        tempOrders.setCustomers(this);
    }
}
