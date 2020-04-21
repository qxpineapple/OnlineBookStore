<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                  <li aria-current="page" class="breadcrumb-item active">${param.bookType}</li>
                </ol>
              </nav>
            </div>
            <div class="col-lg-3">
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

              <div class="banner"><a href="#"><img src="img2/hotpoint2.jpg" alt="sales 2020" class="img-fluid"></a></div>
            </div>
            <div class="col-lg-9">
              <div class="box">
                <h1>${param.bookType}</h1>
                <c:if test="${param.bookType == '现代小说' or param.bookType == '古典小说' or param.bookType == '外文小说'}">
                  <p>书中自有颜如意，书中自有黄金屋，好的小说会让人百看不厌，深得人心。</p>
                </c:if>
                <c:if test="${param.bookType == '哲学宗教' or param.bookType == '心理学' or param.bookType == '历史'}">
                  <p>文艺的开始意味着人类的文艺复兴，人类将重新发现了人和人格的伟大，肯定了人的价值和能力，提出人要养育人格，个性应该智慧</p>
                </c:if>
                <c:if test="${param.bookType == '工业' or param.bookType == '计算机' or param.bookType == '科普' or param.bookType == '医学'}">
                  <p>在科学上没有平坦的大道，只有不畏劳苦沿着陡峭山路攀登的人，才能希望达到光辉的顶点。</p>
                </c:if>

              </div>
              <div class="box info-bar">
                <div class="row">
                  <div class="col-md-12 col-lg-4 products-showing">商品展示</div>
                  <div class="col-md-12 col-lg-7 products-number-sort">
                    <form action="clientBookServlet" method="get" class="form-inline d-block d-lg-flex justify-content-between flex-column flex-md-row">
                      <input type="hidden" name="action" value="pageByPriceAndType">
                      <c:if test="${not empty param.bookType}">
                        <input type="hidden" name="bookType" value="${param.bookType}">
                      </c:if>
                      <input type="hidden" name="pageSize" value="6">
                      <div class="products-sort-by mt-2 mt-lg-0"><strong>价格区间：</strong>
                        <input id="min" type="text" name="min" value="${param.min}" class="form-control" size="4"> 元 -
                        <input id="max" type="text" name="max" value="${param.max}" class="form-control" size="4"> 元
                        <input type="submit" value="查询" class="btn btn-primary" />
                      </div>
                    </form>
                  </div>
                </div>
              </div>

              <div id="page" class="row products">

                <c:forEach items="${requestScope.page.items}" var="book">
                  <div class="col-lg-4 col-md-6">
                    <div class="product">
                      <div class="flip-container">
                        <div class="flipper">
                          <div class="front"><a href="detail.jsp"><img src="${book.imgPath}" alt="" class="img-fluid"></a></div>
                          <div class="back"><a href="detail.jsp"><img src="${book.imgPath}" alt="" class="img-fluid"></a></div>
                        </div>
                      </div><a href="detail.jsp" class="invisible"><img src="${book.imgPath}" alt="" class="img-fluid"></a>
                      <div class="text">
                        <h3><a href="detail.jsp">${book.name}</a></h3>
                        <p class="price">
                            ${book.author}<br>
                          <del></del>$${book.price}
                        </p>
                        <p class="buttons"><a href="clientBookServlet?action=getBookDetail&bookId=${book.id}" class="btn btn-outline-secondary">查看详情</a>
                          <a id="${book.id}" href="#" onclick="addToCart(this.id)"  class="btn btn-primary"><i class="fa fa-shopping-cart"></i>加入购物车</a>
                        </p>
                      </div>
                      <!-- /.text-->
                    </div>
                    <!-- /.product            -->
                  </div>
                </c:forEach>

                <!-- /.products-->
              </div>


              <div class="pages">

                <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                  <ul class="pagination">

                    <c:if test="${requestScope.page.pageNo > 1}">
<%--                      <li><a href="${requestScope.page.url}&pageNo=1&pageSize=6">首页</a></li>--%>
                      <li class="page-item"><a href="${requestScope.page.url}&pageNo=1&pageSize=6" aria-label="Previous" class="page-link">
                        <span aria-hidden="true">首页</span><span class="sr-only">首页</span></a></li>

                      <li class="page-item"><a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo-1}&pageSize=6" aria-label="Previous" class="page-link"><span aria-hidden="true">«</span><span class="sr-only">Previous</span></a></li>
                    </c:if>

                    <c:choose>
                      <c:when test="${requestScope.page.pageTotal <= 5}">
                        <c:forEach begin="1" end="${requestScope.page.pageTotal}" var="i">
                          <c:if test="${requestScope.page.pageNo == i}">
                            <li class="page-item active"><a href="#" class="page-link">${i}</a></li>
                          </c:if>
                          <c:if test="${i != requestScope.page.pageNo}">
                            <li class="page-item"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=6" class="page-link">${i}</a></li>
                          </c:if>
                        </c:forEach>
                      </c:when>
                      <c:when test="${requestScope.page.pageTotal > 5}">
                        <c:choose>
                          <%--					当前页码为前三个--%>
                          <c:when test="${requestScope.page.pageNo <= 3}">
                            <c:forEach begin="1" end="5" var="i">
                              <c:if test="${requestScope.page.pageNo == i}">
                                <li class="page-item active"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=6" class="page-link">${i}</a></li>
                              </c:if>
                              <c:if test="${i != requestScope.page.pageNo}">
                                <li class="page-item"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=6" class="page-link">${i}</a></li>
                              </c:if>
                            </c:forEach>
                          </c:when>
                          <%--					当前页码为最后三个--%>
                          <c:when test="${requestScope.page.pageNo > requestScope.page.pageTotal - 3 }">
                            <c:forEach begin="${requestScope.page.pageTotal - 4}" end="${requestScope.page.pageTotal}" var="i">
                              <c:if test="${requestScope.page.pageNo == i}">
                                <li class="page-item active"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=6" class="page-link">${i}</a></li>
                              </c:if>
                              <c:if test="${i != requestScope.page.pageNo}">
                                <li class="page-item"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=6" class="page-link">${i}</a></li>
                              </c:if>
                            </c:forEach>
                          </c:when>
                          <%--					其他页码--%>
                          <c:otherwise>
                            <c:forEach begin="${requestScope.page.pageNo - 2}" end="${requestScope.page.pageNo + 2}" var="i">
                              <c:if test="${requestScope.page.pageNo == i}">
                                <li class="page-item active"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=6" class="page-link">${i}</a></li>
                              </c:if>
                              <c:if test="${i != requestScope.page.pageNo}">
                                <li class="page-item"><a href="${requestScope.page.url}&pageNo=${i}&pageSize=6" class="page-link">${i}</a></li>
                              </c:if>
                            </c:forEach>
                          </c:otherwise>
                        </c:choose>
                      </c:when>
                    </c:choose>

                    <c:if test="${requestScope.page.pageNo < requestScope.page.pageTotal}">
<%--                      <li><a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo+1}&pageSize=6">下一页</a></li>--%>
                      <li class="page-item"><a href="${requestScope.page.url}&pageNo=${requestScope.page.pageNo+1}&pageSize=6" aria-label="Next" class="page-link"><span aria-hidden="true">»</span><span class="sr-only">Next</span></a></li>
                      <li class="page-item"><a href="${requestScope.page.url}&pageNo=${requestScope.page.pageTotal}&pageSize=6" aria-label="Next" class="page-link"><span aria-hidden="true">末页</span><span class="sr-only">末页</span></a></li>
                    </c:if>

                  </ul>
                </nav>
              </div>

            </div>
            <!-- /.col-lg-9-->
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
    <script>
      function addToCart(id) {

        var bookId = id;
        // alert(bookId);
        location.href = "cartServlet?action=addItem&id=" + bookId;
      }

    </script>
  </body>
</html>