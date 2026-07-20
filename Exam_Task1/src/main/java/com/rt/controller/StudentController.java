package com.rt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rt.model.Student;

@Controller
public class StudentController {
	
	@RequestMapping("/")
	public String home() {
		return "welcome";
	}
	
	@RequestMapping("/submitForm")
	public String submit(@ModelAttribute("student") Student student) {
		return "display";
	}
}
