package com.atguigu.dao;

import com.atguigu.pojo.Book;

import java.util.List;

public interface BookDao {

    public int addBook(Book book);

    public int deleteBookById(Integer id);

    public int updateBook(Book book);

    public Book queryBookById(Integer id);

    public List<Book> queryBooks();

    Integer queryForPageTotalCount();

    List<Book> queryForPageItems(int begin, int pageSize);

    Integer queryForPageTotalCountByPrice(int min, int max);

    List<Book> queryForPageItemsByPrice(int begin, int pageSize, int min, int max);

    Integer queryForPageTotalCountByType(String type);

    List<Book> queryBooksByType(String type);

    List<Book> queryForPageItemsByType(int begin, int pageSize, String type);


    Integer queryForPageTotalCountByPriceAndType(int min, int max, String type);

    List<Book> queryForPageItemsPriceAndType(int begin, int pageSize, int min, int max, String type);

    Integer queryForPageTotalCountBySearchString(String searchString);

    List<Book> queryBooksBySearchString(int begin, int pageSize, String searchString);
}
