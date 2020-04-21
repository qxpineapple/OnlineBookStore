package com.atguigu.web;

import com.atguigu.pojo.Book;
import com.atguigu.pojo.Cart;
import com.atguigu.pojo.CartItem;
import com.atguigu.service.BookService;
import com.atguigu.service.impl.BookServiceImpl;
import com.atguigu.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CartServlet extends BaseServlet {
    BookService bookService = new BookServiceImpl();
    //添加商品
    protected void addItem(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取商品编号
        int id = WebUtils.parseInt(req.getParameter("id"),0);
        Book book = bookService.queryBookById(id);
        CartItem cartItem = new CartItem(book.getId(),book.getName(),1,book.getPrice(),book.getPrice());
        Cart cart = (Cart) req.getSession().getAttribute("cart");
        if(cart == null){
            cart = new Cart();
            req.getSession().setAttribute("cart",cart);
        }
        cart.addItem(cartItem);
        //返回最后一次添加商品的名称
//        req.getSession().setAttribute("lastName",cartItem.getName());
        //返回请求的页面
        resp.sendRedirect(req.getHeader("Referer"));
    }
    //删除商品
    protected void deleteItem(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取商品编号
        int id = WebUtils.parseInt(req.getParameter("id"),0);
        Cart cart = (Cart)req.getSession().getAttribute("cart");
        if(cart != null){
            cart.deleteItem(id);
        }
        //返回请求的页面
        resp.sendRedirect(req.getHeader("Referer"));
    }
    //清空购物车
    protected void clear(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cart cart = (Cart)req.getSession().getAttribute("cart");
        if(cart != null){
            cart.claer();
        }
        //返回请求的页面
        resp.sendRedirect(req.getHeader("Referer"));
    }
    //修改商品数量
    protected void updateCount(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取商品编号
        int id = WebUtils.parseInt(req.getParameter("id"),0);
        //获取数量
        int count = WebUtils.parseInt(req.getParameter("count"),0);
        Cart cart = (Cart)req.getSession().getAttribute("cart");
        if(cart != null){
            cart.updateCount(id,count);
        }
        //返回请求的页面
        resp.sendRedirect(req.getHeader("Referer"));
    }

}
