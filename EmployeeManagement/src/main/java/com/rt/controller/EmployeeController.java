package com.rt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.rt.model.Employee;
import com.rt.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService service;
	
	@GetMapping("/")
	public String home() {
		
		return "home";
	}
	
	@GetMapping("/addEmployee")
	public String addEmployee() {
		return "add_emp";
	}
	
	
	@PostMapping("/saveEmployee")
	public String SaveEmployee(@ModelAttribute("employee") Employee e) {
		service.addEmployee(e);
		return "add_emp";
	}
	
	@GetMapping("/report")
	public String showEmployee(Model model) {
		List<Employee> employees = service.showEmployee();
		model.addAttribute("employees", employees);
		return "report";
	}
	
	
	@GetMapping("/deleteEmployee")
	public String deleteEmployee(@RequestParam("id") Integer id, RedirectAttributes attributes) {
		service.deleteEmployee(id);
		attributes.addFlashAttribute("msg", "Employee deleted successfully. ID : " + id);
		return "redirect:/report";
	}
}
