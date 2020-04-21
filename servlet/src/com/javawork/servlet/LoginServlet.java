package com.javawork.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if (username.equals("yct")&&password.equals("123456")){
            req.setAttribute("name11",username); //用来始终显示用户名，有问题
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }else {
            req.setAttribute("errorMsg","用户名或密码错误，请重新输入！！");
            req.getRequestDispatcher("register.jsp").forward(req,resp);
        }
    }
}
