package com.rt.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.rt.model.Employee;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class EmployeeController {

	@GetMapping("/")
	public String showHome() {
		
		return "welcome";
	}
	
	@GetMapping("/register")
	public String showRegisterEmployeeFormPage() {
		return "emp_register_form";
	}
	
	@PostMapping("/register")
	public String processEmployeeFormPage(Map<String, Object> map, @ModelAttribute("emp") Employee emp) {
		if(emp.getSalary() < 100000.0) {
			map.put("salaryType", "Reasonable Salary");
		}else {
			map.put("salaryType", "HighSalary");
		}
		return "display";
		
	}
}
