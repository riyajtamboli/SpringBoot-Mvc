package com.rt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LogController {
	
	@GetMapping("/home")
	public String home() {
		return "Welcome Home";
	}
}
