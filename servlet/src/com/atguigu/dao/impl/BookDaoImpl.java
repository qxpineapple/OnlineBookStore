package com.atguigu.dao.impl;

import com.atguigu.dao.BookDao;
import com.atguigu.pojo.Book;


import java.util.List;

public class BookDaoImpl extends BaseDao implements BookDao {
    @Override
    public int addBook(Book book) {
        String sql = "insert into book..t_book (name,author,price,sales,stock,img_path,type,press,time,introduction) values (?,?,?,?,?,?,?,?,?,?)";
        int update = update(sql, book.getName(), book.getAuthor(), book.getPrice(), book.getSales(), book.getStock(), book.getImgPath(),book.getType(),book.getPress(),book.getTime(),book.getIntroduction());
        return update;
    }

    @Override
    public int deleteBookById(Integer id) {
        String sql = "delete from book..t_book where id = ?";
        return update(sql, id);
    }

    @Override
    public int updateBook(Book book) {
        String sql = "update book..t_book set name=?, author=?, price=?, sales=?, stock=?, img_path=?, type=?, press=?, time=?, introduction=? where id = ?";
        return update(sql,book.getName(),book.getAuthor(),book.getPrice(),book.getSales(),book.getStock(),book.getImgPath(),book.getType(),book.getPress(),book.getTime(),book.getIntroduction(),book.getId());
    }

    @Override
    public Book queryBookById(Integer id) {
        String sql = "select id,name,author,price,sales,stock,img_path imgPath,type,press,time,introduction from book..t_book where id = ?";
        return queryForOne(Book.class,sql,id);
    }

    @Override
    public List<Book> queryBooks() {
        String sql = "select id,name,author,price,sales,stock,img_path imgPath,type,press,time,introduction from book..t_book";
        return queryForList(Book.class, sql);
    }


    @Override
    public Integer queryForPageTotalCount() {
        String sql = "select count(*) from book..t_book";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<Book> queryForPageItems(int begin, int pageSize) {
        String sql =  "select top "+ pageSize +" id,name,author,price,sales,stock,img_path imgPath,type from book..t_book where id not in (select top " + begin+ " id from book..t_book) ";
        return queryForList(Book.class,sql);
    }

    @Override
    public Integer queryForPageTotalCountByPrice(int min, int max) {
        String sql = "select count(*) from book..t_book where price between " + min + " and " + max;
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<Book> queryForPageItemsByPrice(int begin, int pageSize, int min, int max) {
        String sql = "select top "+pageSize + " id,name,author,price,sales,stock,img_path imgPath from (select top 1000 * from book..t_book where price between "+min+" and "+max+" order by price) TCG where id not in (select top "+begin+" id from (select top 1000 * from book..t_book where price between "+min+" and "+max+" order by price) TCG) ";
        return queryForList(Book.class,sql);
    }


    @Override
    public Integer queryForPageTotalCountByType(String type) {
        String bookType = "'" + type + "'";
        String sql = "select count(*) from book..t_book where type =  " +bookType;
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<Book> queryBooksByType(String type) {
        String bookType = "'" + type + "'";
        String sql = "select id,name,author,price,sales,stock,img_path imgPath,type from book..t_book where type = "+bookType;
        return queryForList(Book.class,sql);
    }


    @Override
    public List<Book> queryForPageItemsByType(int begin, int pageSize, String type) {
        String bookType = "'" + type + "'";
        String sql = "select top "+pageSize + " id,name,author,price,sales,stock,img_path imgPath from (select top 1000 * from book..t_book where type = "+bookType+" order by price ) TCG where id not in (select top "+begin+" id from (select top 1000 * from book..t_book where type = "+bookType+" order by price) TCG) ";
        return queryForList(Book.class,sql);
    }

    @Override
    public Integer queryForPageTotalCountByPriceAndType(int min, int max, String type) {
        String bookType = "'" + type + "'";
        String sql = "select count(*) from (select * from book..t_book where  type = "+bookType+" ) TDG where price between " + min + " and " + max;
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }


    @Override
    public List<Book> queryForPageItemsPriceAndType(int begin, int pageSize, int min, int max, String type) {
        String bookType = "'" + type + "'";
        String sql = "select top "+pageSize+" id,name,author,price,sales,stock,img_path imgPath from (select * from (select top 1000 * from book..t_book where  type = "+bookType+" order by price) TDG where price between "+min+" and "+max+") TCG where id not in (select top "+begin+" id from (select * from (select top 1000 * from book..t_book where  type = "+bookType+" order by price) TDG where price between "+min+" and "+max+") TCG ) ";
        return queryForList(Book.class,sql);
    }

    @Override
    public Integer queryForPageTotalCountBySearchString(String searchString) {
        String sql = "select count(*) from book..t_book where name ='"+searchString+"' or CHARINDEX('"+searchString+"',name) >0 or author ='"+searchString+"' or CHARINDEX('"+searchString+"',author) >0 or introduction ='"+searchString+"' or CHARINDEX('"+searchString+"',introduction) >0";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<Book> queryBooksBySearchString(int begin, int pageSize, String searchString) {
        String sql = "select top "+pageSize + " id,name,author,price,sales,stock,img_path imgPath from (select * from book..t_book where name ='"+searchString+"' or CHARINDEX('"+searchString+"',name) >0 or author ='"+searchString+"' or CHARINDEX('"+searchString+"',author) >0 or introduction ='"+searchString+"' or CHARINDEX('"+searchString+"',introduction) >0) TCG where id not in (select top "+begin+" id from(select * from book..t_book where name ='"+searchString+"' or CHARINDEX('"+searchString+"',name) >0 or author ='"+searchString+"' or CHARINDEX('"+searchString+"',author) >0 or introduction ='"+searchString+"' or CHARINDEX('"+searchString+"',introduction) >0) TCG)";
        return queryForList(Book.class,sql);
    }
}
