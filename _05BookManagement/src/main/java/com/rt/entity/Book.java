package com.rt.entity;

import java.time.LocalDate;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;

import lombok.RequiredArgsConstructor;

@Entity
@Table(name = "book_store_db")
@Data
@RequiredArgsConstructor
@AllArgsConstructor
public class Book {
     
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	private String title;
	private String author;
	private String category;
	private Double price;
	private String publisher;
	private LocalDate publish_date;
	private Integer quantity;
}
