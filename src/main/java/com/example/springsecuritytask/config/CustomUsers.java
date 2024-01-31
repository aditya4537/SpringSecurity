package com.example.springsecuritytask.config;

import java.util.Arrays;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.example.springsecuritytask.model.UserData;

public class CustomUsers implements UserDetails{
	
	private static final long serialVersionUID = 1L;
	
	private UserData userData;
	

	public CustomUsers(UserData userData) {
		super();
		this.userData = userData;		
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		SimpleGrantedAuthority simpleGrantedAuthority = new SimpleGrantedAuthority(userData.getRole());
		return Arrays.asList(simpleGrantedAuthority);
	}

	@Override
	public String getPassword() {
		return userData.getPassword();
	}

	@Override
	public String getUsername() {
		return userData.getUsername();
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
		return true;
	}

}
