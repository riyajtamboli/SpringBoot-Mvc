package com.rt.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rt.entity.Book;

@Repository
public interface BookRepo extends JpaRepository<Book, Integer> {

}
