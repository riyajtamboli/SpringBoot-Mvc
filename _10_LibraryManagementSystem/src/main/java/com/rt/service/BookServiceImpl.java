package com.rt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.model.Book;
import com.rt.repository.BookRepository;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookRepository repository;

    @Override
    public void saveBook(Book book) {
        repository.save(book);
    }
    
    public List<Book> getAllBooks() {
        return repository.findAll();
    }
    
    @Override
    public Book getBookById(Integer id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public void deleteBook(Integer id) {
        repository.deleteById(id);
    }
}