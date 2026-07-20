package com.rt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class EmployeeController {
	
	@GetMapping("employee/{id}")
	public String home( @PathVariable("id") Integer id, Model model) {
		
		return "show";
	}
}
