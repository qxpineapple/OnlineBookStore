package com.atguigu.service;

import com.atguigu.pojo.Book;
import com.atguigu.pojo.BookDetail;
import com.atguigu.pojo.Page;

import java.util.List;

public interface BookService {
    public void addBook(Book book);
    public void deleteBookById(Integer id);
    public void updateBook(Book book);
    public Book queryBookById(Integer id);
    public List<Book> queryBooks();
    public Page<Book> page(int pageNo,int pageSize);

    Page<Book> pageByType(int pageNo, int pageSize, String bookType);

    Page<Book> pageByPriceAndType(int pageNo, int pageSize, int min, int max, String bookType);

    Page<Book> searchBooks(int pageNo, int pageSize, String searchString);
}
