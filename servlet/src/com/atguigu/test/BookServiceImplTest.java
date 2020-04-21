package com.atguigu.test;

import com.atguigu.pojo.Book;
import com.atguigu.pojo.Page;
import com.atguigu.service.BookService;
import com.atguigu.service.impl.BookServiceImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class BookServiceImplTest {
    BookService bookService = new BookServiceImpl();
    @Test
    public void pageByPrice() {

    }

    @Test
    public void pageByType() {
        Page<Book> page = bookService.pageByType(0,4,"小说");
        System.out.println(page);
    }
}