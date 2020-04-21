package com.atguigu.dao;

import com.atguigu.pojo.BookDetail;

public interface BookDetailDao {
    public int addBookDetail(BookDetail bookDetail);

    public BookDetail queryBookDetailByBookId(Integer bookId);

    public int updateBookDetail(BookDetail bookDetail);
}
