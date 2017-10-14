package com.mightyjava.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.mightyjava.model.Role;
import com.mightyjava.model.User;

public interface UserService {
	List<User> userList();
	
	Page<User> findAll(Pageable pageable);
	
	User findOne(Long id);
	
	String addUser(User user);
	
	String deleteUser(Long id);
	
	List<Role> roleList();
	
	void refreshCache();
}
