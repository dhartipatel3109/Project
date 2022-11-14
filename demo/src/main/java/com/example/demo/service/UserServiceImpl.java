package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.User;
import com.example.demo.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserRepository userRepository;

	@Override
	public User saveUser(User user) {
		return userRepository.save(user);
	}

	@Override
	public boolean isValidUser(String userEmail, String userPass) {
		User user = userRepository.findByEmail(userEmail);
		String email = user.getEmail();
		String password = user.getPassword();

		System.out.println("User Detail: " + user);

		if (email.equals(userEmail) && password.equals(userPass))
			return true;
		return false;
	}

}
