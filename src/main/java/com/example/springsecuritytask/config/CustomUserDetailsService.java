package com.example.springsecuritytask.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.example.springsecuritytask.model.UserData;
import com.example.springsecuritytask.repository.UserRepo;

@Component
public class CustomUserDetailsService implements UserDetailsService {
	
	@Autowired
	private UserRepo userRepo;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserData user = userRepo.findByUsername(username);
		if(user == null) {
			throw new UsernameNotFoundException(username + " is not registered");
		}
		return new CustomUsers(user);
	}
	
}
