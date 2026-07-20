package com.rt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rt.model.Festival;

@Controller
public class FestivalController {
	
	@RequestMapping("/")
	public String home() {
		
		return "festival_form";
	}
	
	@PostMapping("/festival")
	public String success( @ModelAttribute("festival") Festival festival) {
		
		return "festival_success";
	}
}
