package com.example.springsecuritytask.service;

import java.util.List;

import com.example.springsecuritytask.model.UserData;

public interface UserService {

	public String addUser(UserData user);

	public UserData getUser(String username);
	
	public List<UserData> getAllUsers();
}
