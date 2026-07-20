package com.rt.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MvcContoller {
	
	@RequestMapping("/")
	public String home(Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("Id", "1001");
		map.put("Name", "Laptop");
		map.put("Brand", "Dell");
		map.put("Price", "65000");
		model.addAllAttributes(map);
		
		return "index";
	}
}
