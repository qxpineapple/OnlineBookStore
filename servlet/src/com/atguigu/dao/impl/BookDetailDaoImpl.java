package com.atguigu.dao.impl;

import com.atguigu.dao.BookDetailDao;
import com.atguigu.pojo.BookDetail;

public class BookDetailDaoImpl extends BaseDao implements BookDetailDao {
    @Override
    public int addBookDetail(BookDetail bookDetail) {
        String sql = "insert into book..t_bookDetail (id, author, press, time, introduction) values (?,?,?,?,?)";
        return update(sql,bookDetail.getId(),bookDetail.getAuthor(),bookDetail.getPress(),bookDetail.getTime(),bookDetail.getIntroduction());
    }

    @Override
    public BookDetail queryBookDetailByBookId(Integer bookId) {
        String sql = "select * from book..t_bookDetail where id = ?";
        return queryForOne(BookDetail.class,sql,bookId);
    }

    @Override
    public int updateBookDetail(BookDetail bookDetail) {
        String sql = "update book..t_bookDetail set author=?, press=?, time=?, introduction=? where id = ?";
        return update(sql,bookDetail.getAuthor(),bookDetail.getPress(),bookDetail.getTime(),bookDetail.getIntroduction(),bookDetail.getId());
    }
}
