package com.rt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.entity.Book;
import com.rt.repo.BookRepo;

@Service
public class BookServiceImple implements BookService {

	@Autowired
	private BookRepo repo;
	
	@Override
	public String addBook(Book book) {
		
		repo.save(book);
		
		return "Book saved with id : "+book.getId();
	}

}
