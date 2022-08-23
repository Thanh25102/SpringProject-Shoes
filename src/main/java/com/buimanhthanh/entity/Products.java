package com.buimanhthanh.entity;

import javax.persistence.*;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "products")
public class Products implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "name")
    private String name;

    @Column(name = "price")
    private Double price;

    @Column(name = "description")
    private String description;

    @Column(name = "thumbnail")
    private String thumbnail;

    @Column(name="raw_quantity")
    private Integer rawQuantity;

    @ManyToOne()
    @JoinColumn(name = "category_id")
    private Categories categories;

    @OneToMany(mappedBy = "products")
    private Set<CartDetails> cartDetailsSet;

    @OneToMany(mappedBy = "products")
    private Set<OrderDetails> orderDetailsSet;

    @OneToMany(mappedBy = "products")
    private Set<ProductImages> productImagesSet;


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

    public Categories getCategories() {
        return categories;
    }

    public void setCategories(Categories categories) {
        this.categories = categories;
    }

    public Integer getRawQuantity() {
        return rawQuantity;
    }

    public void setRawQuantity(Integer rawQuantity) {
        this.rawQuantity = rawQuantity;
    }

    public Set<CartDetails> getCartDetailsSet() {
        return cartDetailsSet;
    }

    public void setCartDetailsSet(Set<CartDetails> cartDetailsSet) {
        this.cartDetailsSet = cartDetailsSet;
    }

    public Set<OrderDetails> getOrderDetailsSet() {
        return orderDetailsSet;
    }

    public void setOrderDetailsSet(Set<OrderDetails> orderDetailsSet) {
        this.orderDetailsSet = orderDetailsSet;
    }

    public Set<ProductImages> getProductImagesSet() {
        return productImagesSet;
    }

    public void setProductImagesSet(Set<ProductImages> productImagesSet) {
        this.productImagesSet = productImagesSet;
    }

    public void addProductImages(ProductImages productImages){
        if(productImagesSet == null){
            productImagesSet = new HashSet<ProductImages>();
        }
        productImagesSet.add(productImages);
        productImages.setProducts(this);
    }

    public void addCartDetails(CartDetails cartDetails){
        if(cartDetailsSet == null){
            cartDetailsSet = new HashSet<CartDetails>();
        }
        cartDetailsSet.add(cartDetails);
        cartDetails.setProducts(this);
    }
    public void addOrderDetails(OrderDetails orderDetails){
        if(orderDetailsSet == null){
            orderDetailsSet = new HashSet<OrderDetails>();
        }
        orderDetailsSet.add(orderDetails);
        orderDetails.setProducts(this);
    }
}
