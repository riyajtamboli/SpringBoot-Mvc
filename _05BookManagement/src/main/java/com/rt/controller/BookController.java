package com.rt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.rt.entity.Book;
import com.rt.service.BookServiceImple;

@Controller
public class BookController {
	
	@Autowired
	private BookServiceImple bookServiceImple;
	
	@GetMapping("/home")
	public String welcome() {
		return "home";
	}
	
	@GetMapping("addBook")
	public String addBokk() {
		return "addBook";
	}
	
	@PostMapping("/saveBook")
	
	public String saveBook(@ModelAttribute Book book,
            RedirectAttributes redirectAttributes) {

String msg = bookServiceImple.addBook(book);

redirectAttributes.addFlashAttribute("msg", msg);

return "redirect:/addBook";
}
}
