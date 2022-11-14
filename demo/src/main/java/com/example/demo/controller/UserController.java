package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@GetMapping(value = "/login")
	public String loginPage() {
		return "/user/Login";
	}

	@PostMapping(value = "/checkUser")
	public String checkUser(@RequestParam String userEmail, @RequestParam String pass) {
		if (userService.isValidUser(userEmail, pass))
			homePage();

		return "/user/Login";
	}

	@GetMapping(value = "/dashboard")
	public String homePage() {
		return "/user/Home";
	}
	
}
