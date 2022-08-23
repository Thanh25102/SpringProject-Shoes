package com.buimanhthanh.entity;

import javax.persistence.*;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "carts")
public class Carts implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "customer_id")
    private Customers customers;

    @Column(name = "ammount")
    private Double ammount;

    @Column(name = "create_time")
    private java.sql.Timestamp createTime;

    @OneToMany(mappedBy = "carts")
    private Set<CartDetails> setCartDetails;

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public Customers getCustomers() {
        return customers;
    }

    public void setCustomers(Customers customers) {
        this.customers = customers;
    }


    public Double getAmmount() {
        return this.ammount;
    }

    public void setAmmount(Double ammount) {
        this.ammount = ammount;
    }

    public java.sql.Timestamp getCreateTime() {
        return this.createTime;
    }

    public void setCreateTime(java.sql.Timestamp createTime) {
        this.createTime = createTime;
    }

    public Set<CartDetails> getSetCartDetails() {
        return setCartDetails;
    }

    public void setSetCartDetails(Set<CartDetails> setCartDetails) {
        this.setCartDetails = setCartDetails;
    }

    public void addCartDetails(CartDetails cartDetails){
        if(setCartDetails == null){
            setCartDetails = new HashSet<CartDetails>();
        }
        setCartDetails.add(cartDetails);
        cartDetails.setCarts(this);
    }

}
