package com.atguigu.dao.impl;

import com.atguigu.dao.UserDao;
import com.atguigu.pojo.User;


public class UserDaoImpl extends BaseDao implements UserDao {

    @Override
    public User queryUserByUsername(String usename) {
        String sql = "select id,username,password,email from book..t_user where username = ?";
            return queryForOne(User.class,sql,usename);
    }

    @Override
    public User queryUserByUsernameAndPassword(String usename, String password) {
        String sql = "select id,username,password,email from book..t_user where username = ? and password = ?";
        return queryForOne(User.class,sql,usename,password);
    }

    @Override
    public int saveUser(User user) {
        String sql = "insert into book..t_user (username,password,email) values (?,?,?)";
        return update(sql,user.getUsername(),user.getPassword(),user.getEmail());
    }

    @Override
    public int updateUser(User loginUser) {
        String sql = "update book..t_user set username=?, password=? where id = ?";
        return update(sql,loginUser.getUsername(),loginUser.getPassword(),loginUser.getId());
    }
}
