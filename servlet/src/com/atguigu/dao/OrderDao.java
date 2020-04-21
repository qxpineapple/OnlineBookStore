package com.atguigu.dao;


import com.atguigu.pojo.Order;

import java.util.List;

public interface OrderDao {
    public int saveOrder(Order order);

    public List<Order> queryOrders();

    public int changeOrderStatus(int status,String order_id);

    List<Order> queryOrdersByUserId(int userId);

    Order queryOrderById(String orderId);
}
