package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String welcomePage() {
		return "Index";
	}

	@RequestMapping("/login")
	public String loginPage() {
		return "Login";
	}

}
