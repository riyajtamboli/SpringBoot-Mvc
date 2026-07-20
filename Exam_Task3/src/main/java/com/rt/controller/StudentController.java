package com.rt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rt.model.Student;

@Controller
public class StudentController {
	
	@RequestMapping("/")
	public String home() {
		return "welcome";
	}
	
	@RequestMapping("/submitForm/{id}")
	public String submit(@PathVariable("id") String id, Model model) {
	    model.addAttribute("Id", id);
	    model.addAttribute("name", "Riyaz");
	    model.addAttribute("course", "Java");

	    return "display";
	}
}
