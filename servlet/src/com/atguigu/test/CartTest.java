package com.atguigu.test;

import com.atguigu.pojo.Cart;
import com.atguigu.pojo.CartItem;
import org.junit.Test;

import java.math.BigDecimal;

import static org.junit.Assert.*;

public class CartTest {

    @Test
    public void addItem() {
        Cart cart = new Cart();
        cart.addItem(new CartItem(1,"ruan1",1,new BigDecimal(200),new BigDecimal(200)));
        cart.addItem(new CartItem(1,"ruan1",1,new BigDecimal(200),new BigDecimal(200)));
        cart.addItem(new CartItem(3,"确实",2,new BigDecimal(200),new BigDecimal(400)));

        System.out.println(cart);
    }

    @Test
    public void deleteItem() {
        Cart cart = new Cart();
        cart.addItem(new CartItem(1,"ruan1",1,new BigDecimal(200),new BigDecimal(200)));
        cart.addItem(new CartItem(1,"ruan1",1,new BigDecimal(200),new BigDecimal(200)));
        cart.addItem(new CartItem(3,"确实",2,new BigDecimal(200),new BigDecimal(400)));

        cart.deleteItem(3);

        System.out.println(cart);
    }

    @Test
    public void claer() {
        Cart cart = new Cart();
        cart.addItem(new CartItem(1,"ruan1",1,new BigDecimal(200),new BigDecimal(200)));
        cart.addItem(new CartItem(1,"ruan1",1,new BigDecimal(200),new BigDecimal(200)));
        cart.addItem(new CartItem(3,"确实",2,new BigDecimal(200),new BigDecimal(400)));

        cart.deleteItem(3);

        cart.claer();
        System.out.println(cart);
    }

    @Test
    public void updateCount() {
        Cart cart = new Cart();
        cart.addItem(new CartItem(1,"ruan1",1,new BigDecimal(200),new BigDecimal(200)));
        cart.addItem(new CartItem(1,"ruan1",1,new BigDecimal(200),new BigDecimal(200)));
        cart.addItem(new CartItem(3,"确实",2,new BigDecimal(200),new BigDecimal(400)));

        cart.deleteItem(3);

        cart.claer();

        cart.addItem(new CartItem(1,"ruan1",1,new BigDecimal(200),new BigDecimal(200)));
        cart.updateCount(1,20);
        System.out.println(cart);
    }
}