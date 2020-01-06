package com.example.demo.model;

import org.springframework.stereotype.Component;

@Component
public class Book {
 private int bookId;
 private String bookname;
 private double price;
 
 Book(){
	 System.out.println("book");
 }
public int getBookId() {
	return bookId;
}
public void setBookId(int bookId) {
	this.bookId = bookId;
}
public String getBookname() {
	return bookname;
}
public void setBookname(String bookname) {
	this.bookname = bookname;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
}
