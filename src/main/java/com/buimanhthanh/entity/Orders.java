package com.buimanhthanh.entity;

import javax.persistence.*;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "orders")
public class Orders implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "order_status")
    private String orderStatus;

    @Column(name = "ammount")
    private Integer ammount;

    @Column(name = "payment_method")
    private String paymentMethod;

    @Column(name = "create_time")
    private java.sql.Timestamp createTime;

    @OneToMany(mappedBy = "orders")
    private Set<OrderDetails> orderDetailsSet;

    @ManyToOne
    @JoinColumn(name = "customer_id")
    private Customers customers;


    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getOrderStatus() {
        return this.orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public Integer getAmmount() {
        return this.ammount;
    }

    public void setAmmount(Integer ammount) {
        this.ammount = ammount;
    }

    public String getPaymentMethod() {
        return this.paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public java.sql.Timestamp getCreateTime() {
        return this.createTime;
    }

    public void setCreateTime(java.sql.Timestamp createTime) {
        this.createTime = createTime;
    }
    public Customers getCustomers() {
        return customers;
    }

    public void setCustomers(Customers customers) {
        this.customers = customers;
    }

    public Set<OrderDetails> getOrderDetailsSet() {
        return orderDetailsSet;
    }

    public void setOrderDetailsSet(Set<OrderDetails> orderDetailsSet) {
        this.orderDetailsSet = orderDetailsSet;
    }
    public void addOrderDetails(OrderDetails orderDetails){
        if(orderDetailsSet == null){
            orderDetailsSet = new HashSet<OrderDetails>();
        }
        orderDetailsSet.add(orderDetails);
        orderDetails.setOrders(this);
    }
}
