package com.rt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class BillController {
	
	@RequestMapping("/index")
	public String home() {
		return "index";
	}
	
	@RequestMapping("/calculateUnit")
	public String calculate( @RequestParam("unit") Integer unit, @RequestParam("name") String name, Model model) {
	
		double total = unit *8;
		
		model.addAttribute("name", name);
		model.addAttribute("unit", unit);
		model.addAttribute("total", total);
		
		
		return "billResult";
		
	}
}
