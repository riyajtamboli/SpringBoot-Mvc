package com.rt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MvcController {
	
	
	@RequestMapping("/")
	public String home(Model map) {
		
		map.addAttribute("name", "Rahul");
		map.addAttribute("course", "Java Full Stack");
		map.addAttribute("city", "Hyderabad");
		return "index";
	}
}
