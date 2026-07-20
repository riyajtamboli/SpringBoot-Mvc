package com.rt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class AuthController {

	@GetMapping("/login")
	public String login() {
		return "login";
	}

	@PostMapping("/logg")
	public String login(@RequestParam String username, @RequestParam String password, HttpSession session,
			Model model) {

		if (username.equals("admin") && password.equals("admin123")) {

			session.setAttribute("user", username);

			return "redirect:/profile";
		}

		model.addAttribute("msg", "Invalid Username or Password");

		return "login";
	}
	
	 @GetMapping("/profile")
	    public String profile() {

	        return "profile";
	    }

	    @GetMapping("/logout")
	    public String logout(HttpSession session) {

	        session.invalidate();

	        return "redirect:/login";
	    }

	

}
