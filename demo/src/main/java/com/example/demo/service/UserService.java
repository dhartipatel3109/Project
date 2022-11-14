package com.example.demo.service;

import com.example.demo.model.User;

public interface UserService {

	public User saveUser(User user);

	public boolean isValidUser(String userEmail, String pass);

}