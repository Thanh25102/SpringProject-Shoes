package com.buimanhthanh.dto;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class UsersDTO implements UserDetails{
    private static final long serialVersionUID = 1L;
	private String userName;
    private String password;
    private Boolean enabled4;

    private Set<String> userRoles;

    public Set<String> getUserRole() {
        return userRoles;
    }

    public void setUserRole(Set<String> userRoles) {
        this.userRoles = userRoles;
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

	public Boolean getEnabled4() {
		return this.enabled4;
	}

	public void setEnabled4(Boolean enabled4) {
		this.enabled4 = enabled4;
	}



	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		Set<GrantedAuthority> auths = new HashSet<>();
		userRoles.forEach(role-> auths.add(new SimpleGrantedAuthority(role)));
		return auths;
	}

	@Override
	public String getUsername() {
		return this.userName;
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return this.enabled4;
	}

	@Override
	public String toString() {
		return "UsersDTO [userName=" + userName + ", password=" + password + ", enabled=" + enabled4 + ", userRoles="
				+ userRoles + "]";
	}
}
