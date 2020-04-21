package com.atguigu.test;

import com.atguigu.dao.BookDao;
import com.atguigu.dao.impl.BookDaoImpl;
import com.atguigu.pojo.Book;
import org.junit.Test;

import java.math.BigDecimal;

import static org.junit.Assert.*;

public class BookDaoImplTest {
    BookDao bookDao = new BookDaoImpl();
//    @Test
//    public void addBook() {
//        for(int i = 0; i < 20; i++){
//            bookDao .addBook(new Book(null,"第"+i+"维度","神奇"+i, new BigDecimal(50+i),i+100,i+500,"/pages/static/img/default.jpg"));
//        }
//    }

    @Test
    public void deleteBookById() {
    }

    @Test
    public void updateBook() {
    }

    @Test
    public void queryBookById() {
    }

    @Test
    public void queryBooks() {
    }

    @Test
    public void queryForPageTotalCount() {
        System.out.println(bookDao.queryForPageTotalCount());
    }

    @Test
    public void queryForPageItems() {
        for (Book book: bookDao.queryForPageItems(1,4)) {
            System.out.println(book);
        }
    }
    @Test
    public void queryForPageTotalCountByPrice() {
        System.out.println(bookDao.queryForPageTotalCountByPrice(50,55));
    }
    @Test
    public void queryForPageItemsByprice() {
        for (Book book: bookDao.queryForPageItemsByPrice(0,4,300,100000)) {
            System.out.println(book);
        }
    }

    @Test
    public void queryForPageTotalCountByType() {
        System.out.println(bookDao.queryForPageTotalCountByType("小说"));
    }
    @Test
    public void queryForPageItemsByType() {
        for (Book book: bookDao.queryForPageItemsByType(0,4,"小说")) {
            System.out.println(book);
        }
    }
    @Test
    public void queryForPageTotalCountByPriceAndType() {
        System.out.println(bookDao.queryForPageTotalCountByPriceAndType(10,20,"小说"));
    }
    @Test
    public void queryForPageItemsByPriceAndType() {
        for (Book book: bookDao.queryForPageItemsPriceAndType(0,4,10,20,"小说")) {
            System.out.println(book);
        }
    }
}