package com.rt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MvcController {

    @RequestMapping("/student")
    public String home(Model model) {
        model.addAttribute("msg", "Welcome Student");
        return "home";
    }
}