package com.atguigu.web;

import com.atguigu.pojo.Book;
import com.atguigu.pojo.Page;
import com.atguigu.service.BookService;
import com.atguigu.service.impl.BookServiceImpl;
import com.atguigu.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class BookServlet extends BaseServlet {
    private BookService bookService = new BookServiceImpl();

    protected void add(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
        pageNo++;
        Book book = WebUtils.copyParamToBean(req.getParameterMap(),new Book());
        bookService.addBook(book);
        resp.sendRedirect(req.getContextPath() + "/manager/bookServlet?action=page&pageNo=" + pageNo );
    }
    protected void delete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id =  WebUtils.parseInt(req.getParameter("id"),0);
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
        bookService.deleteBookById(id);
        resp.sendRedirect(req.getContextPath() + "/manager/bookServlet?action=page&pageNo=" + pageNo );
    }
    protected void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
        Book book = WebUtils.copyParamToBean(req.getParameterMap(),new Book());
        bookService.updateBook(book);
        resp.sendRedirect(req.getContextPath() + "/manager/bookServlet?action=page&pageNo=" + pageNo );
    }
    protected void getBook(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = WebUtils.parseInt(req.getParameter("id"),0);
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),0);
        Book book = bookService.queryBookById(id);
        req.setAttribute("book",book);
        req.setAttribute("pageNo",pageNo);
        req.getRequestDispatcher("/manager/book-edit.jsp").forward(req,resp);
    }
    protected void list(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Book> books  = bookService.queryBooks();
        req.setAttribute("books", books);
        req.getRequestDispatcher("/manager/picture-list.jsp").forward(req,resp);
    }

    protected void loginPage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        Page<Book> page = bookService.page(pageNo,pageSize);
        //后台页面路径
//        page.setUrl("manager/bookServlet?action=page");
        req.setAttribute("page",page);
        if (username.equals("admin") && password.equals("123456")){
            req.getRequestDispatcher("/manager/picture-list.jsp").forward(req,resp);
        }else {
            req.getRequestDispatcher("/manager/manager-login.jsp").forward(req,resp);
        }

    }

    protected void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"),1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        Page<Book> page = bookService.page(pageNo,pageSize);
        //后台页面路径
//        page.setUrl("manager/bookServlet?action=page");
        req.setAttribute("page",page);
        req.getRequestDispatcher("/manager/picture-list.jsp").forward(req,resp);

    }


}