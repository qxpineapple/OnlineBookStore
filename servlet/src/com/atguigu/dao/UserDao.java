package com.atguigu.dao;


import com.atguigu.pojo.User;

public interface UserDao {
    /**
     * 根据用户名查询用户信息,用于注册用户
     * @param usename
     * @return 返回null说明用户不存在
     */
    public User queryUserByUsername(String usename);

    /**
     * 根据用户名和密码查询用户
     * @param usename
     * @param password
     * @return 返回Null，说明有错误
     */
    public User queryUserByUsernameAndPassword(String usename,String password);

    /**
     * 保存用户信息到数据库
     * @return 返回-1表示失败，其他表示行数
     */
    public int saveUser(User user);

    int updateUser(User loginUser);
}
