package com.rt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.model.Book;
import com.rt.service.BookServiceImpl;

@Controller
public class BookController {
	
	@Autowired
	private BookServiceImpl bookService;
	
	@GetMapping("/")
	public String home() {
		return "home";
	}
	
	@GetMapping("/admin/login")
	public String admin() {
		return "admin";
	}
	
	@GetMapping("/user/login")
	public String user() {
		return "user";
	}
	
	@GetMapping("/addBook")
	public String add(Model model) {
		model.addAttribute("book", new Book());
		return "addBook";
	}
	
	 @PostMapping("/save")
	    public String saveBook(@ModelAttribute Book book, Model model) {

	        bookService.saveBook(book);

	        model.addAttribute("msg", "Book Saved Successfully");

	        return "redirect:/report";
	    }
	
	 @GetMapping("/report")
	 public String report(Model model) {

	     model.addAttribute("books", bookService.getAllBooks());

	     return "report";
	 }
	 
	 @GetMapping("/edit")
	 public String editBook(@RequestParam Integer id, Model model) {

	     Book book = bookService.getBookById(id);

	     model.addAttribute("book", book);

	     return "addBook";
	 }

	 @GetMapping("/delete")
	 public String deleteBook(@RequestParam Integer id) {

	     bookService.deleteBook(id);

	     return "redirect:/report";
	 }

	 @PostMapping("/update")
	 public String updateBook(@ModelAttribute Book book) {

	     bookService.saveBook(book);

	     return "redirect:/report";
	 }
}
