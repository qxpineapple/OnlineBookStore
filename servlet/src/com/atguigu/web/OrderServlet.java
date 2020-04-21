package com.atguigu.web;

import com.atguigu.pojo.Cart;
import com.atguigu.pojo.Order;
import com.atguigu.pojo.OrderItem;
import com.atguigu.pojo.User;
import com.atguigu.service.OrderService;
import com.atguigu.service.impl.OderServiceImpl;
import com.atguigu.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

public class OrderServlet extends BaseServlet {
    OrderService orderService = new OderServiceImpl();
    //创建订单号
    protected void createOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cart cart = (Cart)req.getSession().getAttribute("cart");
        int payment = WebUtils.parseInt(req.getParameter("payment"),1);//获取选择的支付方式
        int transmethod = WebUtils.parseInt(req.getParameter("transform"),1);//获取选择的支付方式
//        System.out.println(transmethod);
//        String payment = req.getParameter("payment");
//        System.out.println(payment);
        User loginUser = (User)req.getSession().getAttribute("user");
        if(loginUser == null){
            req.getRequestDispatcher("register.jsp").forward(req,resp);
            return;
        }
        Integer userId = loginUser.getId();
        String orderId = orderService.createOreder(cart,userId);

        req.getSession().setAttribute("paymethod",payment);
        req.getSession().setAttribute("transmethod",transmethod);
        req.getSession().setAttribute("orderId",orderId);
        resp.sendRedirect(req.getContextPath() + "/pay.jsp");
//        req.getRequestDispatcher("pay.jsp").forward(req,resp);
    }
    //"管理订单"
    protected void showAllOrders(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Order> orders  = orderService.showAllOrders();
        req.setAttribute("orders", orders);
        req.getRequestDispatcher("/manager/order-list.jsp").forward(req,resp);
    }
    //“发货"
    protected void sendOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        orderService.sendOrder(req.getParameter("orderId"));
        resp.sendRedirect(req.getContextPath() + "/manager/orderServlet?action=showAllOrders");
    }
    //查看"我的订单"
    protected void showMyOrders(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User loginUser = (User)req.getSession().getAttribute("user");
        if(loginUser == null){
            req.getRequestDispatcher("register.jsp").forward(req,resp);
            return;
        }
        int userId = loginUser.getId();
        List<Order> orders = orderService.showMyOrders(userId);
        req.setAttribute("orders",orders);
        req.getRequestDispatcher("customer-orders.jsp").forward(req,resp);
    }
    //查看订单详情
    protected void showOrderDetail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String orderId = req.getParameter("orderId");
        User loginUser = (User)req.getSession().getAttribute("user");
        int userId = loginUser.getId();
        List<Order> orders = orderService.showMyOrders(userId);
        List<OrderItem> orderItems = orderService.showOrderDetail(orderId);

        Order order = orderService.getOrder(orderId);
        req.setAttribute("nowOrder",order);
        req.setAttribute("orderItems",orderItems);


        req.getRequestDispatcher("customer-order.jsp").forward(req,resp);
    }
    //确认收货
    protected void receiverOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        orderService.receiverOrder(req.getParameter("orderId"));
        resp.sendRedirect(req.getContextPath() + "/orderServlet?action=showMyOrders");
    }
}
