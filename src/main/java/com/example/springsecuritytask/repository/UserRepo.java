package com.example.springsecuritytask.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.springsecuritytask.model.UserData;

@Repository
public interface UserRepo extends JpaRepository<UserData, Long>{

	public UserData findByUsername(String username);
}
