package com.atguigu.test;

import com.atguigu.pojo.User;
import com.atguigu.service.impl.UserServiceImpl;
import org.junit.Test;
import com.atguigu.service.UserService;


public class UserServiceImplTest {
    UserService userService = new UserServiceImpl();
    @Test
    public void registUser() {
        userService.registUser(new User(null,"bb11","bb22","33@com"));
        userService.registUser(new User(null,"bb22","bb33","44@com"));
    }

    @Test
    public void login() {
        System.out.println(userService.login(new User(null,"admin","admin",null)));
    }

    @Test
    public void existsUsername() {
        if(userService.existsUsername("admin")){
            System.out.println("用户名可用");
        }else {
            System.out.println("用户名已存在");
        }
    }
}