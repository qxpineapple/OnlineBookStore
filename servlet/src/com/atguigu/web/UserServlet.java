package com.atguigu.web;

import com.atguigu.pojo.User;
import com.atguigu.service.UserService;
import com.atguigu.service.impl.UserServiceImpl;
import com.atguigu.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserServlet extends BaseServlet {

    private UserService userService = new UserServiceImpl();
    /**
     *登录
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //获取参数
        User user = WebUtils.copyParamToBean(req.getParameterMap(),new User());
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        //处理业务
        User loingUser = userService.login(new User(null,username,password,null));
        if( loingUser == null){
            //将错误信息和回显的表单信息，保存到Request域中
            req.setAttribute("errorMsg","用户名或密码错误!");
            req.setAttribute("loginUsername",username);
            //登录失败
            //跳到登录页面
            req.getRequestDispatcher("register.jsp").forward(req,resp);
        }else{
            //登录成功
            //保存用户信息到session中
            req.getSession().setAttribute("user",loingUser);
            //跳到登录成功页面
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }
    }

    protected void loginout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().invalidate();
        resp.sendRedirect(req.getContextPath());
    }

    /**
     *注册
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void regist(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        User user = WebUtils.copyParamToBean(req.getParameterMap(),new User());
        String genpassword = req.getParameter("genpassword");
        //先判断两次密码是否一致
        if(password.equals(genpassword)){
            //检查用户名是否可用
            if(userService.existsUsername(username)){
                //错误与回显信息
                req.setAttribute("msg","用户已存在！！");
                req.setAttribute("username",username);
                req.setAttribute("email",email);
                //跳回注册页面
                req.getRequestDispatcher("register.jsp").forward(req,resp);
            }else {
                userService.registUser(new User(null,username,password,email));
                //跳转到注册成功页面
                req.setAttribute("msg","注册成功，请登录!");
                req.setAttribute("loginUsername",username);
                req.getRequestDispatcher("register.jsp").forward(req,resp);
            }

        }else{
            //错误与回显信息
            req.setAttribute("msg","请重新确认密码！！");
            req.setAttribute("username",username);
            req.setAttribute("email",email);
            //跳回注册页面
            req.getRequestDispatcher("register.jsp").forward(req,resp);
        }

    }

    protected void updateUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User loginUser = (User)req.getSession().getAttribute("user");
        String newUsername = req.getParameter("username");
        String oldPassword = req.getParameter("password_old");
        String newPassword = req.getParameter("password_1");
        String genpassword = req.getParameter("password_2");
        if(oldPassword.equals(loginUser.getPassword())){
            if(newPassword.equals(genpassword)){
                req.setAttribute("msg","修改成功！");
                loginUser.setPassword(newPassword);
                loginUser.setUsername(newUsername);
                userService.updateUser(loginUser);
                req.getSession().setAttribute("user",loginUser);
            }else{
                req.setAttribute("msg","请重新确认密码！！");
            }
        }else{
            req.setAttribute("msg","密码错误！");
        }
        req.setAttribute("username",newUsername);
//        resp.sendRedirect(req.getHeader("Referer"));
        req.getRequestDispatcher("customer-account.jsp").forward(req,resp);
    }
}
