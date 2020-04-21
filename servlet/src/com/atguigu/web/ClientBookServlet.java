package com.atguigu.web;

import com.atguigu.pojo.Book;
import com.atguigu.pojo.BookDetail;
import com.atguigu.pojo.Page;
import com.atguigu.service.BookService;
import com.atguigu.service.impl.BookServiceImpl;
import com.atguigu.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ClientBookServlet extends BaseServlet {
    private BookService bookService = new BookServiceImpl();
    //主页分页程序
    protected void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        Page<Book> page = bookService.page(pageNo,pageSize);
        //前台页面路径
        page.setUrl("clientBookServlet?action=page");
        req.setAttribute("page",page);
        req.getRequestDispatcher("category.jsp").forward(req,resp);
    }
    //按照价格和种类查找程序
    protected void pageByPriceAndType(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        int min = WebUtils.parseInt(req.getParameter("min"),0);
        int max = WebUtils.parseInt(req.getParameter("max"),Integer.MAX_VALUE);
        String bookType = req.getParameter("bookType");
        Page<Book> page = bookService.pageByPriceAndType(pageNo,pageSize,min,max,bookType);
        //前台页面路径
        StringBuilder stringBuilder = new StringBuilder("clientBookServlet?action=pageByPriceAndType");
        if(bookType != null && bookType != ""){
            stringBuilder.append("&bookType=").append(req.getParameter("bookType"));
        }
        if(req.getParameter("min") != null){
            stringBuilder.append("&min=").append(req.getParameter("min"));
        }
        if(req.getParameter("max") != null){
            stringBuilder.append("&max=").append(req.getParameter("max"));
        }
        page.setUrl(stringBuilder.toString());
//        page.setUrl("clientBookServlet?action=pageByPrice");
        req.setAttribute("page",page);
        req.getRequestDispatcher("category.jsp").forward(req,resp);

    }
    //按照种类查找书籍
    protected void pageByType(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        String bookType = req.getParameter("bookType");
        Page<Book> page = bookService.pageByType(pageNo,pageSize,bookType);
        //前台页面路径

        page.setUrl("clientBookServlet?action=pageByType&bookType=" +bookType);
        req.setAttribute("page",page);
        req.getRequestDispatcher("category.jsp").forward(req,resp);

    }
    //查看图书详情
    protected void getBookDetail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = WebUtils.parseInt(req.getParameter("bookId"),0);
        Book book = bookService.queryBookById(id);
        req.setAttribute("book",book);
        req.getRequestDispatcher("detail.jsp").forward(req,resp);
    }

    //搜索图书
    protected void searchBooks(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String searchString = req.getParameter("searchInput");
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        Page<Book> page = bookService.searchBooks(pageNo,pageSize,searchString);
        //前台页面路径
        page.setUrl("clientBookServlet?action=searchBooks&searchInput=" +searchString);
        req.setAttribute("page",page);
        req.getRequestDispatcher("search-result.jsp").forward(req,resp);
    }

}
