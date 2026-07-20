package com.rt.controller;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.rt.entity.Cricketer;
import com.rt.service.CricketerService;

@Controller
public class CricketController {

	@Autowired
	private CricketerService service;
	@GetMapping("/")
	public String home() {
		
		return "home";
	}
	
	
	@GetMapping("/addCricketer")
	public String addPlayer() {
		
		return "add_player";
	}
	
	@PostMapping("/savePlayer")
	public String savedPlayer(@ModelAttribute("cricketer") Cricketer cricketer, RedirectAttributes attributes) {
		
		String savedPlayer = service.addCricketer(cricketer);
		attributes.addFlashAttribute("msg", savedPlayer);
		return "redirect:/addCricketer";
	}
	
	@GetMapping("/report")
	public String report(Model model) {
		List<Cricketer> players = service.getAllPlayer();
		model.addAttribute("players", players);
		return "report";
	}
	
	
	@GetMapping("/edit")
	public String showEditPage(@RequestParam("playerId")Integer playerId, @ModelAttribute("cricketer") Cricketer cricketer) {
		Cricketer cricketer2 = service.getCricketerById(playerId);
		BeanUtils.copyProperties(cricketer2, cricketer);
		return "edit_player";
	}
	
	@PostMapping("/submit")
	public String editCricketer(RedirectAttributes attributes, @ModelAttribute("cricketer") Cricketer cricketer) {
		String msg = service.updateCricketer(cricketer);
		attributes.addFlashAttribute("msg", msg);
		return "redirect:/report";
	}
	
	@GetMapping("/delete")
	public String deleteCricketer(@RequestParam("playerId") Integer playerId,RedirectAttributes attributes) {
		String msg = service.deleteById(playerId);
		attributes.addFlashAttribute("msg", msg);
		return "redirect:/report";
	}
}
