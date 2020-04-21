package com.atguigu.service;

import  com.atguigu.pojo.User;

public interface UserService {
    /**
     * 注册
     * @param user
     */
    public void registUser(User user);

    /**
     * 登录
     * @param user
     * @return 返回null登录失败，有值则登录成功
     */
    public User login(User user);

    /**
     * 检查用户名是否可用
     * @param username
     * @return
     */
    public boolean existsUsername(String username);

    void updateUser(User loginUser);
}
