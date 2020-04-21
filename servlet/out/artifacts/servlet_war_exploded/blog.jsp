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
                  <li aria-current="page" class="breadcrumb-item active">精品美文</li>
                </ol>
              </nav>
            </div>
          </div>
          <div class="row">
            <!--
            *** LEFT COLUMN ***
            _________________________________________________________
            -->
            <div id="blog-listing" class="col-lg-9">
              <div class="box">
                <h1>精品美文分享</h1>
                <p>当我们遍读一本好书的时候，我们仿佛觉得找到了一个朋友;当我们再一次读这本书的时候，仿佛又和老朋友重逢。</p>
                <div style="text-align: right;">—— 伏尔泰</div>
              </div>
              <!-- post-->
              <div id="passage1" class="post">
                <h2><a href="post.jsp">《匆匆》</a></h2>
                <p class="author-category">作者：<strong>朱自清</strong> <br>选自：<a href="">《朱自清散文集》</a></p>
                <hr>
                <p class="date-comments"><a href="post.jsp"><i class="fa fa-calendar-o"></i> June 20, 2013</a><a href="post.jsp"><i class="fa fa-comment-o"></i> 8 Comments</a></p>
                <div class="image"><a href="post.jsp"><img src="img/blog2.jpg" alt="Example blog post alt" class="img-fluid"></a></div>
                <p class="intro">燕子去了，有再来的时候；杨柳枯了，有再青的时候；桃花谢了，有再开的时 候。但是，聪明的，你告诉我，我们的日子为什么一去不复返呢？——是有人偷了他 们罢：那是谁？又藏在何处呢？是他们自己逃走了罢——如今又到了哪里呢？</p>
                <p class="read-more"><a href="post.jsp" class="btn btn-primary">继续阅读</a></p>
              </div>
              <!-- post        -->
              <div id="passage2" class="post">
                <h2><a href="post.jsp">《活着》</a></h2>
                <p class="author-category">作者： <strong>余华</strong>  <br>选自：<a href="">《活着》</a></p>
                <hr>
                <p class="date-comments"><a href="post.jsp"><i class="fa fa-calendar-o"></i> June 20, 2013</a><a href="post.jsp"><i class="fa fa-comment-o"></i> 8 Comments</a></p>
                <div class="image"><a href="post.jsp"><img src="img/blog.jpg" alt="Example blog post alt" class="img-fluid"></a></div>
                <p class="intro">可是我再也没遇到一个像福贵这样令我难忘的人了，对自己的经历如此的清楚，又能如此精彩的讲述自己。他是那种能够看到自己过去模样的人，他可以精准的看到自己年轻时走路的姿态，甚至可以看到自己是如何衰老的。</p>
                <p class="read-more"><a href="post.jsp" class="btn btn-primary">继续阅读</a></p>
              </div>
              <!-- <div class="pager d-flex justify-content-between">
                <div class="previous"><a href="#" class="btn btn-outline-primary">← Older</a></div>
                <div class="next disabled"><a href="#" class="btn btn-outline-secondary disabled">Newer →        </a></div>
              </div> -->
            </div>
            <!-- /.col-lg-9-->
            <!-- *** LEFT COLUMN END ***-->
            
            <div class="col-lg-3">
              <!--
              *** BLOG MENU ***
              _________________________________________________________
              -->
              <div id="listone" class="card sidebar-menu mb-4">
                <div class="card-header">
                  <h3 class="h4 panel-title">目录</h3>
                </div>
                <div class="card-body">
                  <ul class="nav flex-column nav-pills">
                    <li><a href="#passage1" class="nav-link">《匆匆》</a></li>
                    <li><a href="#passage2" class="nav-link">《活着》</a></li>
                    <li><a href="blog.jsp" class="nav-link">《朝花夕拾》</a></li>
                    <li><a href="blog.jsp" class="nav-link">《其他》</a></li>
                  </ul>
                </div>
              </div>
              <!-- /.col-lg-3-->
              <!-- *** BLOG MENU END ***-->

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
    <script>
      function htmlScroll() {                 // 实现目录随屏幕滚动
        var top = document.body.scrollTop || document.documentElement.scrollTop;
            if (elFix.data_top < top) {
                elFix.style.position = 'fixed';
                elFix.style.top = 0;
                elFix.style.left = elFix.data_left;
            }
            else {
                elFix.style.position = 'static';
            }
      }

      function htmlPosition(obj) {
          var o = obj;
          var t = o.offsetTop;
          var l = o.offsetLeft;
          while (o = o.offsetParent) {
              t += o.offsetTop;
              l += o.offsetLeft;
          }
          obj.data_top = t;
          obj.data_left = l;
      }

      var oldHtmlWidth = document.documentElement.offsetWidth;
      window.onresize = function () {
          var newHtmlWidth = document.documentElement.offsetWidth;
          if (oldHtmlWidth == newHtmlWidth) {
              return;
          }
          oldHtmlWidth = newHtmlWidth;
          elFix.style.position = 'static';
          htmlPosition(elFix);
          htmlScroll();
      }
      window.onscroll = htmlScroll;

      var elFix = document.getElementById('listone');
      htmlPosition(elFix);
    </script>
  </body>
</html>