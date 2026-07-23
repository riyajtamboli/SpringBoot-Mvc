package com.rt.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {
	
	@GetMapping("/")
	public String home() {
		
		return "Home Page";
	}
	
	@GetMapping("/about")
	public String about()
	{
		return "About Page";
		
	}
	
	@GetMapping("/dashboard")
	public String dashboard() {
		return "Dashboard Page";
	}
	
	
	@GetMapping("/profile")
	public String profile() {
		return "Profile Page";
	}
}
