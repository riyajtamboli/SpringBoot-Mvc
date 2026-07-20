package com.rt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.model.Product;

@Controller
public class ProductController {
	
	@RequestMapping("/")
	public String home() {
		
		return "welcome";
	}
	
	@GetMapping("display")
	public String Product(@RequestParam("name") String name, Model model) {
		
		model.addAttribute("name", name);
		model.addAttribute("id", "prod1");
		model.addAttribute("price", 25000);
		model.addAttribute("category", "Electronic");
		return "display";
	}
}
