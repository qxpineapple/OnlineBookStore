

## OnlineBookStore网络编程的实践作业

#### 1.项目简介

同他人一同完成，负责全部后端的工作和部分关于对数据库的操作

采用JeeWeb架构来实现后端，前端是jsp动态页面，数据库则使用sql server

#### 2.实现的功能

###### 2.1后台管理

- 新增图书

- 删除现有图书

- 更新现有图书

- 管理用户提交的订单

###### 2.2前台用户

- 按照类别查找书籍

- 按照价格查找书籍

- 搜索书籍

- 购物车和订单模块

- 查看订单

- 设置收货地址和更新账户信息

#### 3.前端展示

- 主页
![image](https://github.com/qxpineapple/OnlineBookStore/blob/master/servlet/READMEIMG/host.png)

- 书籍
  - 图书展示
  ![image](https://github.com/qxpineapple/OnlineBookStore/blob/master/servlet/READMEIMG/books.png)
  - 查看详情
  ![image](https://github.com/qxpineapple/OnlineBookStore/blob/master/servlet/READMEIMG/book.png)
  - 搜索图书
  ![image](https://github.com/qxpineapple/OnlineBookStore/blob/master/servlet/READMEIMG/search.png)
  
- 购物车
![image](https://github.com/qxpineapple/OnlineBookStore/blob/master/servlet/READMEIMG/theCart.png)

- 用户账户
![image](https://github.com/qxpineapple/OnlineBookStore/blob/master/servlet/READMEIMG/user.png)

- 后台管理
![image](https://github.com/qxpineapple/OnlineBookStore/blob/master/servlet/READMEIMG/bookManager.png)

- 订单管理
![image](https://github.com/qxpineapple/OnlineBookStore/blob/master/servlet/READMEIMG/orderManager.png)

#### 4.一些不足之处

- 未来得及使用ajx在如购物车模块，来进行局部刷新

- 未使用Filter进行事务管理，订单模块操作可能会中断

- 未使用Filter进行权限管理，但是好像是前端小哥给否决掉了

- sql语句未优化，有几个看起来效率就很低

- 没有来得及尝试去部署整个项目，进行网络测试（ps：虽然叫OnlineBookstore但其实完全没有Online的功能和想法）

- 一些设计上零零碎碎的小不足

#### 5.结语

这次终于是其他人在划水了，体验了一下当大哥的感觉，只能说很累。当然，最重要的是学到了很多东西。有些东西还是要自己动手去做一遍才能体会的更深刻。
