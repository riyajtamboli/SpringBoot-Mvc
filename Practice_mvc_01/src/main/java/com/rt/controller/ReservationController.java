package com.rt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rt.model.Reservation;

@Controller
public class ReservationController {
	@RequestMapping("/")
	public String home(Model map) {
		
		return "hello";
	}
	
	@GetMapping("/reservation")
	public String login() {
		return "login";
	}
	
	
	
	@RequestMapping("/submitForm")  
	// @ModelAttribute binds form data to the object  
	public String submitForm(@ModelAttribute("reservation") Reservation res)  
	{  
		System.out.print(res);
	    return "confirmation-form";  
	}  
}
