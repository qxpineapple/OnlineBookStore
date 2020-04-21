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
                  <li class="breadcrumb-item"><a href="index.jsp">首页</a></li>
                  <li class="breadcrumb-item"><a href="#">图书详情</a></li>
                  <li aria-current="page" class="breadcrumb-item active">${requestScope.book.name}</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-3 order-2 order-lg-1">
              <!--
              *** MENUS AND FILTERS ***
              _________________________________________________________
              -->
              <div class="card sidebar-menu mb-4">
                <div class="card-header">
                  <h3 class="h4 card-title">目录</h3>
                </div>
                <div class="card-body">
                  <ul class="nav nav-pills flex-column category-menu">
                    <li><a href="#" class="nav-link">小说类</a>
                      <ul class="list-unstyled">
                        <li><a href="clientBookServlet?action=pageByType&bookType=现代小说&pageSize=6" class="nav-link ${param.bookType == '现代小说'?'active':''}">现代小说</a></li>
                        <li><a href="clientBookServlet?action=pageByType&bookType=古典小说&pageSize=6" class="nav-link ${param.bookType == '古典小说'?'active':''}">古典小说</a></li>
                        <li><a href="clientBookServlet?action=pageByType&bookType=外文小说&pageSize=6" class="nav-link ${param.bookType == '外文小说'?'active':''}">外文小说</a></li>
                      </ul>
                    </li>
                    <li><a href="#" class="nav-link">文艺类</a>
                      <ul class="list-unstyled">
                        <li><a href="clientBookServlet?action=pageByType&bookType=哲学宗教&pageSize=6" class="nav-link ${param.bookType == '哲学宗教'?'active':''}">哲学宗教</a></li>
                        <li><a href="clientBookServlet?action=pageByType&bookType=心理学&pageSize=6" class="nav-link ${param.bookType == '心理学'?'active':''}">心理学</a></li>
                        <li><a href="clientBookServlet?action=pageByType&bookType=历史&pageSize=6" class="nav-link ${param.bookType == '历史'?'active':''}">人文历史</a></li>
                      </ul>
                    </li>
                    <li><a href="#" class="nav-link">科技类</a>
                      <ul class="list-unstyled">
                        <li><a href="clientBookServlet?action=pageByType&bookType=工业&pageSize=6" class="nav-link ${param.bookType == '工业'?'active':''}">工业</a></li>
                        <li><a href="clientBookServlet?action=pageByType&bookType=计算机&pageSize=6" class="nav-link ${param.bookType == '计算机'?'active':''}">计算机</a></li>
                        <li><a href="clientBookServlet?action=pageByType&bookType=科普&pageSize=6" class="nav-link ${param.bookType == '科普'?'active':''}">科普</a></li>
                        <li><a href="clientBookServlet?action=pageByType&bookType=医学&pageSize=6" class="nav-link ${param.bookType == '医学'?'active':''}">医学</a></li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </div>

              <!-- *** MENUS AND FILTERS END ***-->

            </div>
            <div class="col-lg-9 order-1 order-lg-2">
              <div id="productMain" class="row">
                <div class="col-md-6">
                  <div data-slider-id="1" class="owl-carousel shop-detail-carousel">
                    <div class="item"> <img src=${requestScope.book.imgPath} alt="${requestScope.book.name}" class="img-fluid"></div>
                    <div class="item"> <img src=${requestScope.book.imgPath} alt="${requestScope.book.name}" class="img-fluid"></div>
                  </div>

                  <!-- /.ribbon-->
                </div>
                <div class="col-md-6">
                  <div class="box">
                    <h1 id="booktitle" class="text-center">《${requestScope.book.name}》</h1>
                    <p class="goToDescription"><a href="#details" class="scroll-to">图书详情介绍</a></p>
                    <p class="price" style="font-size: 15px">已售：${requestScope.book.sales}&emsp; 库存：${requestScope.book.stock}</p>
                    <p class="price">$${requestScope.book.price}</p>
                    <p class="text-center buttons"><a href="cartServlet?action=addItem&id=${requestScope.book.id}" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>加入购物车</a></p>
                  </div>
                  <div data-slider-id="1" class="owl-thumbs">
                    <button class="owl-thumb-item"><img src=${requestScope.book.imgPath} alt="" class="img-fluid"></button>
                    <button class="owl-thumb-item"><img src=${requestScope.book.imgPath} alt="" class="img-fluid"></button>
                    <button class="owl-thumb-item"><img src=${requestScope.book.imgPath} alt="" class="img-fluid"></button>
                  </div>
                </div>
              </div>
              <div id="details" class="box">
                <p></p>
                <h4>书名</h4>
                <p style="font-size: 20px">&emsp;《${requestScope.book.name}》</p>
                <h4>作者 &amp; 图书类型</h4>
                <ul>
                  <li>${requestScope.book.author}</li>
                  <li>${requestScope.book.type}</li>
                </ul>
                <h4>出版社 &amp; 出版日期</h4>
                <ul>
                  <li>${requestScope.book.press}</li>
                  <li>${requestScope.book.time}</li>
                </ul>

                <blockquote>
                  <p><em>${requestScope.book.introduction}</em></p>
                </blockquote>
                <hr>
              </div>


            </div>
            <!-- /.col-md-9-->
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
    <!--
    <script>
      var url = decodeURI(window.location.href);
      var argsIndex = url .split("?name=");
      document.getElementById("booktitle").innerHTML = argsIndex[1];
    </script>-->
  </body>
</html>