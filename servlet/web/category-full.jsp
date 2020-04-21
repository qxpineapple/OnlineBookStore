<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Obaju : e-commerce template</title>
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
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li aria-current="page" class="breadcrumb-item active">Ladies</li>
                </ol>
              </nav>
              <div class="box">
                <h1>Ladies</h1>
                <p>In our Ladies department we offer wide selection of the best products we have found and carefully selected worldwide.</p>
              </div>
              <div class="box info-bar">
                <div class="row">
                  <div class="col-md-12 col-lg-4 products-showing">Showing <strong>12</strong> of <strong>25</strong> products</div>
                  <div class="col-md-12 col-lg-7 products-number-sort">
                    <form class="form-inline d-block d-lg-flex justify-content-between flex-column flex-md-row">
                      <div class="products-number"><strong>Show</strong><a href="#" class="btn btn-sm btn-primary">12</a><a href="#" class="btn btn-outline-secondary btn-sm">24</a><a href="#" class="btn btn-outline-secondary btn-sm">All</a><span>products</span></div>
                      <div class="products-sort-by mt-2 mt-lg-0"><strong>Sort by</strong>
                        <select name="sort-by" class="form-control">
                          <option>Price</option>
                          <option>Name</option>
                          <option>Sales first</option>
                        </select>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              <div class="row products">
                <div class="col-lg-3 col-md-4">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img/product1.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="detail.jsp"><img src="img/product1_2.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img/product1.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">Fur coat with very but very very long name</a></h3>
                      <p class="price"> 
                        <del></del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-3 col-md-4">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img/product2.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="detail.jsp"><img src="img/product2_2.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img/product2.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">White Blouse Armani</a></h3>
                      <p class="price"> 
                        <del>$280</del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                    <div class="ribbon sale">
                      <div class="theribbon">SALE</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                    <div class="ribbon new">
                      <div class="theribbon">NEW</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                    <div class="ribbon gift">
                      <div class="theribbon">GIFT</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-3 col-md-4">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img/product3.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="detail.jsp"><img src="img/product3_2.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img/product3.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">Black Blouse Versace</a></h3>
                      <p class="price"> 
                        <del></del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-3 col-md-4">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img/product3.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="detail.jsp"><img src="img/product3_2.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img/product3.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">Black Blouse Versace</a></h3>
                      <p class="price"> 
                        <del></del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-3 col-md-4">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img/product2.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="detail.jsp"><img src="img/product2_2.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img/product2.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">White Blouse Versace</a></h3>
                      <p class="price"> 
                        <del></del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                    <div class="ribbon new">
                      <div class="theribbon">NEW</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-3 col-md-4">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img/product1.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="detail.jsp"><img src="img/product1_2.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img/product1.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">Fur coat</a></h3>
                      <p class="price"> 
                        <del></del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                    <div class="ribbon gift">
                      <div class="theribbon">GIFT</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-3 col-md-4">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img/product2.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="detail.jsp"><img src="img/product2_2.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img/product2.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">White Blouse Armani</a></h3>
                      <p class="price"> 
                        <del>$280</del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                    <div class="ribbon sale">
                      <div class="theribbon">SALE</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                    <div class="ribbon new">
                      <div class="theribbon">NEW</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                    <div class="ribbon gift">
                      <div class="theribbon">GIFT</div>
                      <div class="ribbon-background"></div>
                    </div>
                    <!-- /.ribbon-->
                  </div>
                  <!-- /.product            -->
                </div>
                <div class="col-lg-3 col-md-4">
                  <div class="product">
                    <div class="flip-container">
                      <div class="flipper">
                        <div class="front"><a href="detail.jsp"><img src="img/product3.jpg" alt="" class="img-fluid"></a></div>
                        <div class="back"><a href="detail.jsp"><img src="img/product3_2.jpg" alt="" class="img-fluid"></a></div>
                      </div>
                    </div><a href="detail.jsp" class="invisible"><img src="img/product3.jpg" alt="" class="img-fluid"></a>
                    <div class="text">
                      <h3><a href="detail.jsp">Black Blouse Versace</a></h3>
                      <p class="price"> 
                        <del></del>$143.00
                      </p>
                      <p class="buttons"><a href="detail.jsp" class="btn btn-outline-secondary">View detail</a><a href="basket.jsp" class="btn btn-primary"><i class="fa fa-shopping-cart"></i>Add to cart</a></p>
                    </div>
                    <!-- /.text-->
                  </div>
                  <!-- /.product            -->
                </div>
                <!-- /.products-->
              </div>
              <div class="pages">
                <p class="loadMore"><a href="#" class="btn btn-primary btn-lg"><i class="fa fa-chevron-down"></i> Load more</a></p>
                <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                  <ul class="pagination">
                    <li class="page-item"><a href="#" aria-label="Previous" class="page-link"><span aria-hidden="true">«</span><span class="sr-only">Previous</span></a></li>
                    <li class="page-item active"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" aria-label="Next" class="page-link"><span aria-hidden="true">»</span><span class="sr-only">Next</span></a></li>
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
  </body>
</html>