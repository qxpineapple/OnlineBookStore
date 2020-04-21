package com.atguigu.service;

import com.atguigu.pojo.Cart;
import com.atguigu.pojo.Order;
import com.atguigu.pojo.OrderItem;


import java.util.List;

public interface OrderService {
    public String createOreder(Cart cart, Integer userId);

    public void receiverOrder(String order_Id);

    void sendOrder(String order_Id);

    List<Order> showMyOrders(int userId);

    List<Order> showAllOrders();

    List<OrderItem> showOrderDetail(String orderId);

    Order getOrder(String orderId);
}
