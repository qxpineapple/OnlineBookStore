package com.atguigu.web;

import com.atguigu.pojo.Address;
import com.atguigu.pojo.User;
import com.atguigu.service.AddressService;
import com.atguigu.service.impl.AddressServiceImpl;
import com.atguigu.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddressServlet extends BaseServlet {
    private AddressService addressService = new AddressServiceImpl();
    protected void getAddress(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User loginUser = (User)req.getSession().getAttribute("user");
        if(loginUser == null){
            req.getRequestDispatcher("register.jsp").forward(req,resp);
            return;
        }
        int userId = loginUser.getId();
        Address address = addressService.queryAddressByUserId(userId);
        String nextUrl ="/"+req.getParameter("nextUrl")+".jsp";
        System.out.println(nextUrl);
        req.setAttribute("address",address);
        req.getRequestDispatcher(nextUrl).forward(req,resp);
    }
    protected void updateAddress(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Address address = WebUtils.copyParamToBean(req.getParameterMap(),new Address());
        User loginUser = (User)req.getSession().getAttribute("user");
        address.setId(loginUser.getId());
        addressService.updateAddress(address);
        req.setAttribute("address",address);
        resp.sendRedirect(req.getHeader("Referer"));
    }
    protected void addAddress(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Address address = WebUtils.copyParamToBean(req.getParameterMap(),new Address());
        User loginUser = (User)req.getSession().getAttribute("user");
        address.setId(loginUser.getId());

        addressService.addAddress(address);
        req.setAttribute("address",address);
        resp.sendRedirect(req.getHeader("Referer"));
    }

}
