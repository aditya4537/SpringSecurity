package com.example.springsecuritytask.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.springsecuritytask.model.UserData;
import com.example.springsecuritytask.repository.UserRepo;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserRepo userRepo;

	@Override
	public String addUser(UserData user) {
		UserData u = user;
		
		UserData verifyUser = userRepo.findByUsername(user.getUsername());
		if(verifyUser == null) {			
			String password = new BCryptPasswordEncoder().encode(user.getPassword());
			u.setPassword(password);
			userRepo.save(u);
			return "success";
		}
		else {
			System.err.println("User is already exists");
			return "error";
		}
		

	}

	@Override
	public UserData getUser(String username) {
		return userRepo.findByUsername(username);
	}

	@Override
	public List<UserData> getAllUsers() {
		return userRepo.findAll();
	}

}
