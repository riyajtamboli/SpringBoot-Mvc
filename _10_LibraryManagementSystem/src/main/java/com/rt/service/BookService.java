package com.rt.service;

import java.util.List;

import com.rt.model.Book;

public interface BookService {

    void saveBook(Book book);
    List<Book> getAllBooks();
    Book getBookById(Integer id);

    void deleteBook(Integer id);
}