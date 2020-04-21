<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>网上书城</title>
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
		<!-- Tweaks for older IEs-->
		<!--[if lt IE 9]>
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
						<div class="col-md-12">
							<!-- 这是主页轮播图-->
							<div id="main-slider" class="owl-carousel owl-theme">
								<div class="item"><img src="img2/index1.jpg" alt="" class="img-fluid"></div>
								<div class="item"><img src="img2/index2.jpg" alt="" class="img-fluid"></div>
								<div class="item"><img src="img2/index4.jpg" alt="" class="img-fluid"></div>
								<div class="item"><img src="img2/index5.jpg" alt="" class="img-fluid"></div>
							</div>

						</div>
					</div>
				</div>
				<!--
        *** ADVANTAGES HOMEPAGE ***
        _________________________________________________________
        -->
				<div id="advantages">
					<div class="container">
						<div class="row mb-4">
							<div class="col-md-4">
								<div class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
									<div class="icon"><i class="fa fa-heart"></i></div>
									<h3><a href="#">贴心的服务</a></h3>
									<p class="mb-0">WE LOVE OUR CUSTOMERS
										We are known to provide best possible service ever</p>
								</div>
							</div>
							<div class="col-md-4">
								<div class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
									<div class="icon"><i class="fa fa-tags"></i></div>
									<h3><a href="#">最低的价格</a></h3>
									<p class="mb-0">Our price is a real boon beyond your expectation.</p>
								</div>
							</div>
							<div class="col-md-4">
								<div class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
									<div class="icon"><i class="fa fa-thumbs-up"></i></div>
									<h3><a href="#">100%品质保证</a></h3>
									<p class="mb-0">
										100% SATISFACTION GUARANTEED
										Free returns on everything for 3 months.</p>
								</div>
							</div>
						</div>
						<!-- /.row-->
					</div>
					<!-- /.container-->
				</div>
				<!-- /#advantages-->
				<!--
        *** HOT PRODUCT SLIDESHOW ***
        _________________________________________________________
        -->
				<div id="hot">
					<div class="box py-4">
						<div class="container">
							<div class="row">
								<div class="col-md-12">
									<h2 class="mb-0">经典必读</h2>
								</div>
							</div>
						</div>
					</div>
					<div class="container">
						<div class="product-slider owl-carousel owl-theme">
							<div class="item">
								<div class="product">
									<div class="flip-container">
										<div class="flipper">
											<div class="front"><a href="clientBookServlet?action=getBookDetail&bookId=189"><img src="img/狼图腾.jpg" alt="狼图腾" class="img-fluid"></a></div>
											<div class="back"><a href="clientBookServlet?action=getBookDetail&bookId=189"><img src="img/狼图腾.jpg" alt="狼图腾" class="img-fluid"></a></div>
										</div>
									</div><a href="clientBookServlet?action=getBookDetail&bookId=189" class="invisible"><img src="img/狼图腾.jpg" alt="狼图腾" class="img-fluid"></a>
									<div class="text">
										<h3><a href="clientBookServlet?action=getBookDetail&bookId=189">狼图腾</a></h3>
										<p class="price">
											$32.40
										</p>
									</div>
									<!-- /.text-->
								</div>
								<!-- /.product-->
							</div>
							<div class="item">
								<div class="product">
									<div class="flip-container">
										<div class="flipper">
											<div class="front"><a href="clientBookServlet?action=getBookDetail&bookId=199"><img src="img2/book2.jpg" alt="" class="img-fluid"></a></div>
											<div class="back"><a href="clientBookServlet?action=getBookDetail&bookId=199"><img src="img2/book2.jpg" alt="" class="img-fluid"></a></div>
										</div>
									</div><a href="clientBookServlet?action=getBookDetail&bookId=199" class="invisible"><img src="img2/book2.jpg" alt="" class="img-fluid"></a>
									<div class="text">
										<h3><a href="clientBookServlet?action=getBookDetail&bookId=199">儒林外史</a></h3>
										<p class="price">
											$81.00
										</p>
									</div>
									<!-- /.text-->
								</div>
								<!-- /.product-->
							</div>
							<div class="item">
								<div class="product">
									<div class="flip-container">
										<div class="flipper">
											<div class="front"><a href="clientBookServlet?action=getBookDetail&bookId=185"><img src="img/白鹿原.jpg" alt="白鹿原" class="img-fluid"></a></div>
											<div class="back"><a href="clientBookServlet?action=getBookDetail&bookId=185"><img src="img/白鹿原.jpg" alt="白鹿原" class="img-fluid"></a></div>
										</div>
									</div><a href="clientBookServlet?action=getBookDetail&bookId=185" class="invisible"><img src="img/白鹿原.jpg" alt="白鹿原" class="img-fluid"></a>
									<div class="text">
										<h3><a href="clientBookServlet?action=getBookDetail&bookId=185">白鹿原</a></h3>
										<p class="price">
											$41.60
										</p>
									</div>
									<!-- /.text-->
								</div>
								<!-- /.product-->
							</div>
							<div class="item">
								<div class="product">
									<div class="flip-container">
										<div class="flipper">
											<div class="front"><a href="clientBookServlet?action=getBookDetail&bookId=203"><img src="img/隋唐演义.jpg" alt="隋唐演义" class="img-fluid"></a></div>
											<div class="back"><a href="clientBookServlet?action=getBookDetail&bookId=203"><img src="img/隋唐演义.jpg" alt="隋唐演义" class="img-fluid"></a></div>
										</div>
									</div><a href="clientBookServlet?action=getBookDetail&bookId=203" class="invisible"><img src="img/隋唐演义.jpg" alt="隋唐演义" class="img-fluid"></a>
									<div class="text">
										<h3><a href="clientBookServlet?action=getBookDetail&bookId=203">隋唐演义</a></h3>
										<p class="price">
											$52.40
										</p>
									</div>
									<!-- /.text-->
								</div>
								<!-- /.product-->
							</div>
							<div class="item">
								<div class="product">
									<div class="flip-container">
										<div class="flipper">
											<div class="front"><a href="clientBookServlet?action=getBookDetail&bookId=186"><img src="img/尘埃落定.jpg" alt="尘埃落定" class="img-fluid"></a></div>
											<div class="back"><a href="clientBookServlet?action=getBookDetail&bookId=186"><img src="img/尘埃落定.jpg" alt="尘埃落定" class="img-fluid"></a></div>
										</div>
									</div><a href="clientBookServlet?action=getBookDetail&bookId=186" class="invisible"><img src="img/尘埃落定.jpg" alt="尘埃落定" class="img-fluid"></a>
									<div class="text">
										<h3><a href="clientBookServlet?action=getBookDetail&bookId=186">尘埃落定</a></h3>
										<p class="price">
											$59.50
										</p>
									</div>
									<!-- /.text-->
									<div class="ribbon new">
										<div class="theribbon">NEW</div>
										<div class="ribbon-background"></div>
									</div>
									<!-- /.ribbon-->
								</div>
								<!-- /.product-->
							</div>
							<div class="item">
								<div class="product">
									<div class="flip-container">
										<div class="flipper">
											<div class="front"><a href="clientBookServlet?action=getBookDetail&bookId=194"><img src="img/晚风枕酒.jpg" alt="晚风枕酒" class="img-fluid"></a></div>
											<div class="back"><a href="clientBookServlet?action=getBookDetail&bookId=194"><img src="img/晚风枕酒.jpg" alt="晚风枕酒" class="img-fluid"></a></div>
										</div>
									</div><a href="clientBookServlet?action=getBookDetail&bookId=194" class="invisible"><img src="img/晚风枕酒.jpg" alt="晚风枕酒" class="img-fluid"></a>
									<div class="text">
										<h3><a href="clientBookServlet?action=getBookDetail&bookId=194">晚风枕酒</a></h3>
										<p class="price">
											<del></del>$42.40
										</p>
									</div>
									<!-- /.text-->
									<div class="ribbon gift">
										<div class="theribbon">GIFT</div>
										<div class="ribbon-background"></div>
									</div>
									<!-- /.ribbon-->
								</div>
								<!-- /.product-->
							</div>

							<!-- /.product-slider-->
						</div>
						<!-- /.container-->
					</div>
					<!-- /#hot-->
					<!-- *** HOT END ***-->
				</div>
				<!--
        *** GET INSPIRED ***
        _________________________________________________________
        -->
				<div class="container">
					<div class="col-md-12">
						<div class="box slideshow">
							<h3>本周热点</h3>
							<p class="lead">品味书香，品味生活，修身养德，诗意人生</p>
							<div id="get-inspired" class="owl-carousel owl-theme">
								<div class="item"><a href="#"><img src="img/slider1.jpg" alt="Get inspired" class="img-fluid"></a></div>
								<div class="item"><a href="#"><img src="img/slider2.jpg" alt="Get inspired" class="img-fluid"></a></div>
								<div class="item"><a href="#"><img src="img/slider3.jpg" alt="Get inspired" class="img-fluid"></a></div>
							</div>
						</div>
					</div>
				</div>
				<!-- *** GET INSPIRED END ***-->
				<!--
        *** BLOG HOMEPAGE ***
        _________________________________________________________
        -->
				<div class="box text-center">
					<div class="container">
						<div class="col-md-12">
							<h3 class="text-uppercase">精品美文段落赏析</h3>
							<p class="lead mb-0"> 书犹药也，善读之可以医愚。 </p>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="col-md-12">
						<div id="blog-homepage" class="row">
							<div class="col-sm-6">
								<div class="post">
									<h4><a href="post.jsp">《时间的答案》</a></h4>
									<p class="author-category">作者： <strong>卢思浩</strong>  选自 <a href="clientBookServlet?action=getBookDetail&bookId=193">《时间的答案》</a></p>
									<hr>
									<p class="intro">&emsp;&emsp;梦想这事儿分两种情况，有一种人从小就知道自己要做什么，另一种人就像我一样，到了一定年龄才突然发现自己想要做什么，就像夏天的雷阵雨，下雨之前你压根儿想不到会下雨，可一旦下了这场雨之后，就是电闪雷鸣。</p>
									<p class="read-more"><a href="clientBookServlet?action=getBookDetail&bookId=193" class="btn btn-primary">了解更多</a></p>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="post">
									<h4><a href="post.jsp">《活着》</a></h4>
									<p class="author-category">作者： <strong>余华</strong>  选自：<a href="clientBookServlet?action=getBookDetail&bookId=196">《活着》</a></p>
									<hr>
									<p class="intro">&emsp;&emsp;可是我再也没遇到一个像福贵这样令我难忘的人了，对自己的经历如此的清楚，又能如此精彩的讲述自己。他是那种能够看到自己过去模样的人，他可以精准的看到自己年轻时走路的姿态，甚至可以看到自己是如何衰老的。</p>
									<p class="read-more"><a href="clientBookServlet?action=getBookDetail&bookId=196" class="btn btn-primary">了解更多</a></p>
								</div>
							</div>
						</div>
						<!-- /#blog-homepage-->
					</div>
				</div>
				<!-- /.container-->
				<!-- *** BLOG HOMEPAGE END ***-->
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
