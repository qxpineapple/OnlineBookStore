<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>网上书店</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
    <!-- owl carousel-->
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    <!-- navbar-->
    <%--		这是头部文件引用          --%>
    <%@include file="common/web_header.jsp"%>

    <div id="all">
      <div id="content">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- breadcrumb-->
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.jsp">主页</a></li>
                  <li aria-current="page" class="breadcrumb-item active">我的账户</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-3">
              <!--
              *** CUSTOMER MENU ***
              _________________________________________________________
              -->
              <div class="card sidebar-menu">
                <div class="card-header">
                  <h3 class="h4 card-title">选项</h3>
                </div>
                <div class="card-body">
                  <ul class="nav nav-pills flex-column"><a href="orderServlet?action=showMyOrders" class="nav-link"><i class="fa fa-list"></i> 我的订单</a>
				  <a href="addressServlet?action=getAddress&nextUrl=customer-account" class="nav-link active"><i class="fa fa-user"></i> 我的账户</a>
				  <a href="userServlet?action=loginout" class="nav-link"><i class="fa fa-sign-out"></i> 退出登录</a></ul>
                </div>
              </div>
              <!-- /.col-lg-3-->
              <!-- *** CUSTOMER MENU END ***-->
            </div>
            <div class="col-lg-9">
              <div class="box">
                <h1>我的账户</h1>
                <p class="lead">您可以在这里编辑您的个人信息或更改密码</p>
                
                <h3>更改密码</h3>
                <form action="userServlet" method="get">
                  <input type="hidden" name="action" value="updateUser">
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="username">用户名</label>
                        <input id="username" name="username" type="text" class="form-control" value="${sessionScope.user.username}">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="password_old">旧密码</label>
                        <input id="password_old" name="password_old" type="text" class="form-control" value="">
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="password_1">新密码</label>
                        <input id="password_1" name="password_1" type="password" class="form-control" value="">
                      </div>
                    </div>
                    <div class="col-md-6">
                      <div class="form-group">
                        <label for="password_2">重新输入新密码</label>
                        <input id="password_2" name="password_2" type="password" class="form-control" value="">
                      </div>
                    </div>
                  </div>
                  <!-- /.row-->
                  <div class="col-md-12 text-center">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> 确认</button>
                    <span id="msg" style="color: #ff3445">${requestScope.msg}</span>
                  </div>
                </form>

                <h3 class="mt-5">收货地址</h3>
                <form>
                  <div class="content py-3">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="firstname">收货人</label>
                          <input name="receiver" id="firstname" type="text" class="form-control" value="${requestScope.address.receiver}">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="lastname">代收人</label>
                          <input name="representativeReceiver" id="lastname" type="text" class="form-control" value="${requestScope.address.representativeReceiver}">
                        </div>
                      </div>
                    </div>
                    <!-- /.row-->
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="company">邮箱</label>
                          <c:choose>
                            <c:when test="${empty requestScope.address.email}">
                              <input name="email" id="company" type="text" class="form-control"  value="${sessionScope.user.email}">
                            </c:when>
                            <c:when test="${not empty requestScope.address.email}">
                              <input name="email" id="company" type="text" class="form-control"  value="${requestScope.address.email}">
                            </c:when>
                          </c:choose>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="phone">电话</label>
                          <input  name="phone" id="phone" type="text" class="form-control" value="${requestScope.address.phone}">
                        </div>
                      </div>
                    </div>
                    <!-- /.row-->
                    <div class="row">
                      <div class="col-md-6 col-lg-3">
                        <div class="form-group">
                          <label for="province">省份</label>
                          <input  name="province" id="province" type="text" class="form-control" value="${requestScope.address.province}">
<%--                          <select name="province" id="province" class="form-control" onchange="getprovince()">--%>
<%--                            <c:choose>--%>
<%--                              <c:when test="${empty requestScope.address.province}">--%>
<%--                                <option value="--请选择--" >--请选择--</option>--%>
<%--                              </c:when>--%>
<%--                              <c:when test="${not empty requestScope.address.province}">--%>
<%--                                <option value="${requestScope.address.province}" >${requestScope.address.province}</option>--%>
<%--                              </c:when>--%>
<%--                            </c:choose>--%>
<%--                            <option value="湖北省">湖北省</option>--%>
<%--                            <option value="山东省">山东省</option>--%>
<%--                            <option value="浙江省">浙江省</option>--%>
<%--                          </select>--%>
                        </div>
                      </div>
                      <div class="col-md-6 col-lg-3">
                        <div class="form-group">
                          <label for="city">市级</label>
                          <input  name="city" id="city" type="text" class="form-control" value="${requestScope.address.city}">
<%--                          <select name="city" id="city" class="form-control">--%>
<%--                            <c:choose>--%>
<%--                              <c:when test="${empty requestScope.address.city}">--%>
<%--                                <option value="--请选择--" >--请选择--</option>--%>
<%--                              </c:when>--%>
<%--                              <c:when test="${not empty requestScope.address.city}">--%>
<%--                                <option value="${requestScope.address.city}" >${requestScope.address.city}</option>--%>
<%--                              </c:when>--%>
<%--                            </c:choose>--%>
<%--                            <option value="武汉市">武汉市</option>--%>
<%--                            <option value="长沙市">长沙市</option>--%>
<%--                          </select>--%>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label for="street">街道/公司/镇</label>
                          <input name ="street" id="street" value="${requestScope.address.street}" type="text" class="form-control">
                        </div>
                      </div>

                      <div class="col-md-12">
                        <div class="form-group">
                          <label for="detail">详细地址</label>
                          <input name="detail" id="detail" value="${requestScope.address.detail}" type="text" class="form-control">
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-12 text-center">
                    <c:choose>
                      <c:when test="${not empty requestScope.address}">
                        <input type="hidden" name="action" value="updateAddress">
                        <input type="hidden" name="addressId" value="${requestScope.address.addressId}">
                      </c:when>
                      <c:when test="${empty requestScope.address}">
                        <input type="hidden" name="action" value="addAddress">
                      </c:when>
                    </c:choose>
                    <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> 保存</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <%--		这是footer部分引用--%>
    <%@include file="common/web_footer.jsp"%>
    
    

    <!-- JavaScript files-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
    <script src="js/front.js"></script>
  </body>
</html>