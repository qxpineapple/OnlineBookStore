package com.atguigu.service.impl;

import com.atguigu.dao.BookDao;
import com.atguigu.dao.BookDetailDao;
import com.atguigu.dao.impl.BookDaoImpl;
import com.atguigu.dao.impl.BookDetailDaoImpl;
import com.atguigu.pojo.Book;
import com.atguigu.pojo.BookDetail;
import com.atguigu.pojo.Page;
import com.atguigu.service.BookService;

import java.util.List;

public class BookServiceImpl implements BookService {
    private BookDao bookDao = new BookDaoImpl();
    private BookDetailDao bookDetailDao = new BookDetailDaoImpl();
    @Override
    public void addBook(Book book) {
        bookDao.addBook(book);
    }

    @Override
    public void deleteBookById(Integer id) {
        bookDao.deleteBookById(id);
    }

    @Override
    public void updateBook(Book book) {
        bookDao.updateBook(book);
    }

    @Override
    public Book queryBookById(Integer id) {
        return bookDao.queryBookById(id);
    }

    @Override
    public List<Book> queryBooks() {
        return bookDao.queryBooks();
    }

    private static int setBookPageDetail(Page<Book> page, int pageTotalCount, int pageSize,int pageNo){

        Integer pageTotal =  pageTotalCount / pageSize;
        if(pageTotalCount % pageSize > 0){pageTotal++;}
        page.setPageTotal(pageTotal);
        //pageNode的set中会用到pageTotal来检查是否越界
        page.setPageNo(pageNo);
        page.setPageSize(pageSize);
        page.setPageTotalCount(pageTotalCount);
        int begin = (page.getPageNo() - 1) * pageSize;

        return begin;

    }

    @Override
    public Page<Book> page(int pageNo, int pageSize) {
        Page<Book> page = new Page<Book>();

        Integer pageTotalCount = bookDao.queryForPageTotalCount();
        int begin = this.setBookPageDetail(page,pageTotalCount,pageSize,pageNo);
        List<Book> items = bookDao.queryForPageItems(begin,pageSize);

        page.setItems(items);
        return page;
    }


    @Override
    public Page<Book> pageByType(int pageNo, int pageSize, String bookType) {
        Page<Book> page = new Page<Book>();

        Integer pageTotalCount = bookDao.queryForPageTotalCountByType(bookType);
        int begin = this.setBookPageDetail(page,pageTotalCount,pageSize,pageNo);
        List<Book> items = bookDao.queryForPageItemsByType(begin,pageSize,bookType);

        page.setItems(items);
        return page;
    }

    @Override
    public Page<Book> pageByPriceAndType(int pageNo, int pageSize, int min, int max, String bookType) {
        Page<Book> page = new Page<Book>();
        if(bookType == null){
            Integer pageTotalCount = bookDao.queryForPageTotalCountByPrice(min,max);
            int begin = this.setBookPageDetail(page,pageTotalCount,pageSize,pageNo);
            List<Book> items = bookDao.queryForPageItemsByPrice(begin,pageSize,min,max);
            page.setItems(items);
        }else{
            Integer pageTotalCount = bookDao.queryForPageTotalCountByPriceAndType(min,max,bookType);
            int begin = this.setBookPageDetail(page,pageTotalCount,pageSize,pageNo);
            List<Book> items = bookDao.queryForPageItemsPriceAndType(begin,pageSize,min,max,bookType);
            page.setItems(items);
        }


        return page;
    }

    @Override
    public Page<Book> searchBooks(int pageNo, int pageSize, String searchString) {
        Page<Book> page = new Page<Book>();
        Integer pageTotalCount = bookDao.queryForPageTotalCountBySearchString(searchString);
        int begin = this.setBookPageDetail(page,pageTotalCount,pageSize,pageNo);
        List<Book> items = bookDao.queryBooksBySearchString(begin,pageSize,searchString);

        page.setItems(items);
        return page;
    }
}
