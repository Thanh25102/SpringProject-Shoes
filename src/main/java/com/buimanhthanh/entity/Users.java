package com.buimanhthanh.entity;


import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "users")
public class Users implements Serializable{
    @Id
    @Column(name = "user_name")
    private String userName;

    @Column(name = "password")
    private String password;
    
    @Transient
    private String confirmPassword;

    @Column(name = "enabled")
    private Boolean enabled;

    @OneToOne(mappedBy = "users",cascade = {CascadeType.ALL})
    private Customers customers;

    @OneToOne(mappedBy = "users")
    private Staff staff;

    @OneToMany(mappedBy = "users",cascade = {CascadeType.ALL})
    private Set<Authorities> authoritiesSet;

    public String getConfirmPassword() {
		return confirmPassword;
	}
    
	public Users(String userName, String password, Boolean enabled) {
		this.userName = userName;
		this.password = password;
		this.enabled = enabled;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public Staff getStaff() {
        return staff;
    }

    public void setStaff(Staff staff) {
        this.staff = staff;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getEnabled() {
        return this.enabled;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }
    public Customers getCustomers() {
        return customers;
    }

    public void setCustomers(Customers customers) {
        this.customers = customers;
    }
    public Set<Authorities> getAuthoritiesSet() {
        return authoritiesSet;
    }

    public void setAuthoritiesSet(Set<Authorities> authoritiesSet) {
        this.authoritiesSet = authoritiesSet;
    }

    public void addAuthorities(Authorities authorities){
        if(this.authoritiesSet == null){
            authoritiesSet = new HashSet<Authorities>();
        }
        authoritiesSet.add(authorities);
        authorities.setUsers(this);
    }

}
