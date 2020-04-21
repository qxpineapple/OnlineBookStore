<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>订单详情</title>
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
                  <li id="currentpage" aria-current="page" class="breadcrumb-item active">配送地址</li>
                </ol>
              </nav>
            </div>

            <div id="checkout" class="col-lg-9">
              <div id="area" class="box">
              </div>
            </div>

            <div class="col-lg-3">
              <div id="order-summary" class="box">
                <div class="box-header">
                  <h3 class="mb-0">购物清单</h3>
                </div>
                <p class="text-muted">这里是您的购物总清单。</p>
                <div class="table-responsive">
                  <table class="table">
                    <tbody>
                    <tr>
                      <td>订单总计</td>
                      <th>$${sessionScope.cart.totalPrice}</th>
                    </tr>
                    <tr>
                      <td>小费</td>
                      <th>$<span id="tax">0.00</span></th>
                    </tr>
                    <tr class="total">
                      <td>Total</td>
                      <th>$${sessionScope.cart.totalPrice}</th>
                    </tr>
                    </tbody>
                  </table>
                </div>
              </div>

              <!-- /.col-md-3-->
            </div>

            <!-- /.col-lg-9-->

            <!-- /.col-lg-3-->
          </div>
        </div>
      </div>
    </div>
    <!--
    *** FOOTER ***
    _________________________________________________________
    -->

    <!-- 界面一 -->
    <div id="checkout1" class="col-lg-9">
      <div id="area1" class="box" style="display: none;">
        <!--<form method="get" action="checkout2.jsp">-->
        <form method="get">
          <h1>检查配送地址</h1>
          <div class="nav flex-column flex-md-row nav-pills text-center"><a href="checkout1.jsp" class="nav-link flex-sm-fill text-sm-center active"> <i class="fa fa-map-marker">                  </i>详细地址</a><a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-truck">                       </i>配送方式</a><a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-eye">                      </i>订单审核</a><a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-money">                     </i>支付方法</a></div>
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
                  <select name="province" id="province" class="form-control" onchange="getprovince()">
                    <c:choose>
                      <c:when test="${empty requestScope.address.province}">
                        <option value="--请选择--" >--请选择--</option>
                      </c:when>
                      <c:when test="${not empty requestScope.address.province}">
                        <option value="${requestScope.address.province}" >${requestScope.address.province}</option>
                      </c:when>
                    </c:choose>
                    <option value="湖北省">湖北省</option>
                    <option value="山东省">山东省</option>
                    <option value="浙江省">浙江省</option>
                  </select>
                </div>
              </div>
              <div class="col-md-6 col-lg-3">
                <div class="form-group">
                  <label for="city">市级</label>
                  <select name="city" id="city" class="form-control">
                    <c:choose>
                      <c:when test="${empty requestScope.address.city}">
                        <option value="--请选择--" >--请选择--</option>
                      </c:when>
                      <c:when test="${not empty requestScope.address.city}">
                        <option value="${requestScope.address.city}" >${requestScope.address.city}</option>
                      </c:when>
                    </c:choose>
                    <option value="武汉市">武汉市</option>
                    <option value="长沙市">长沙市</option>
                  </select>
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
          <div class="box-footer d-flex justify-content-between"><a href="basket.jsp" class="btn btn-outline-secondary"><i class="fa fa-chevron-left"></i>返回购物车</a>
              <c:choose>
                <c:when test="${not empty requestScope.address}">
                  <input type="hidden" name="action" value="updateAddress">
                  <input type="hidden" name="addressId" value="${requestScope.address.addressId}">
                </c:when>
                <c:when test="${empty requestScope.address}">
                  <input type="hidden" name="action" value="addAddress">
                </c:when>
              </c:choose>
              <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> 修改</button>
              <button id="nextTrans" class="btn btn-primary" onclick="nextpage2()">选择配送方式<i class="fa fa-chevron-right"></i></button>
          </div>
        </form>
      </div>
      <!-- /.box-->
    </div>
    <!-- 界面二 -->
    <div id="checkout2" class="col-lg-9">
      <div id="area2" class="box" style="display: none">
        <form>
          <h1>选择配送方式</h1>
          <div class="nav flex-column flex-sm-row nav-pills"><a href="JavaScript:;" class="nav-link flex-sm-fill text-sm-center" onclick="uppage1()"> <i class="fa fa-map-marker">                  </i>详细地址</a><a href="#" class="nav-link flex-sm-fill text-sm-center active"> <i class="fa fa-truck">                       </i>配送方式</a><a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-eye">                      </i>订单审核</a><a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-money">                     </i>支付方法</a></div>
          <div class="content py-3">
            <div class="row">
              <div class="col-md-6">
                <div class="box shipping-method">
                  <h4>顺丰快递</h4>
                  <p>一入顺丰，一路顺风！</p>
                  <div class="box-footer text-center">
                    <input type="radio" name="delivery" value="1">
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="box shipping-method">
                  <h4>韵达快递</h4>
                  <p>韵达快递，为更便捷的生活！</p>
                  <div class="box-footer text-center">
                    <input type="radio" name="delivery" value="2">
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="box shipping-method">
                  <h4>京东快递</h4>
                  <p>京东众包,“递”造新生活！</p>
                  <div class="box-footer text-center">
                    <input type="radio" name="delivery" value="3">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="box-footer d-flex justify-content-between">
            <button type="submit" class="btn btn-primary" onclick="uppage1()"><i class="fa fa-chevron-left" onclick="uppage1()"></i>详细地址</button>
            <!-- <a id="page2topage1" href="checkout1.jsp" class="btn btn-outline-secondary" onclick="uppage1()"><i class="fa fa-chevron-left"></i>详细地址</a> -->
            <button id="page2topage3" type="submit" class="btn btn-primary" onclick="nextpage3()">审核订单内容<i class="fa fa-chevron-right"></i></button>
          </div>
        </form>
      </div>
      <!-- /.box-->
    </div>
    <!-- 界面三 -->
    <div id="checkout3" class="col-lg-9">
      <div id="area3" class="box" style="display: none;">
        <form method="get" action="checkout3.jsp">
          <h1>审核订单内容</h1>
          <div class="nav flex-column flex-sm-row nav-pills"><a href="JavaScript:;" class="nav-link flex-sm-fill text-sm-center" onclick="uppage1()"> <i class="fa fa-map-marker">                  </i>配送地址</a><a href="JavaScript:;" class="nav-link flex-sm-fill text-sm-center" onclick="uppage2()"> <i class="fa fa-truck">                       </i>配送方式</a><a href="#" class="nav-link flex-sm-fill text-sm-center active"> <i class="fa fa-eye">                      </i>订单审核</a><a href="#" class="nav-link flex-sm-fill text-sm-center disabled"> <i class="fa fa-money">                     </i>支付方法</a></div>
          <div class="content">
            <div class="table-responsive">
              <table class="table">
                <thead>
                  <tr>
                    <th>商品</th>
                    <th colspan="2">书名</th>
                    <th>数量</th>
                    <th>价格</th>
                    <th>优惠</th>
                    <th>金额</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach items="${sessionScope.cart.items}" var="entry">
                  <tr>
                    <td><img src="img/${entry.value.name}.jpg" alt="${entry.value.name}"></td>
                    <td colspan="2">${entry.value.name}</td>
                    <td>${entry.value.count}</td>
                    <td>$${entry.value.price}</td>
                    <td>$0.00</td>
                    <td id="prizes">$${entry.value.totalPrice}</td>

                  </tr>
                </c:forEach>

                </tbody>
                <tfoot>
                  <tr>
                    <th colspan="5">共${sessionScope.cart.totalCount}件商品</th>
                    <th colspan="2">总计：$${sessionScope.cart.totalPrice}元</th>
                  </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.table-responsive-->
          </div>
          <!-- /.content-->
          <div class="box-footer d-flex justify-content-between">
            <button type="submit" class="btn btn-primary" onclick="uppage2()"><i class="fa fa-chevron-left" onclick="uppage2()"></i>配送方式</button>
            <!-- <a href="checkout3.jsp" class="btn btn-outline-secondary"><i class="fa fa-chevron-left"></i>Back to payment method</a> -->
            <button type="submit" class="btn btn-primary" onclick="nextpage4()">选择支付方式<i class="fa fa-chevron-right"></i></button>
          </div>
        </form>
      </div>
      <!-- /.box-->
    </div>
    <!-- 界面四 -->
    <div id="checkout4" class="col-lg-9">
      <div id="area4" class="box" style="display: none;">
        <form method="get" action="orderServlet">
          <input type="hidden" name="action" value="createOrder">
          <input type="hidden" id="transform" name="transform" value="">
          <h1>选择支付方式</h1>
          <div class="nav flex-column flex-sm-row nav-pills"><a href="JavaScript:;" class="nav-link flex-sm-fill text-sm-center" onclick="uppage1()"> <i class="fa fa-map-marker">                  </i>配送地址</a><a href="JavaScript:;" class="nav-link flex-sm-fill text-sm-center" onclick="uppage2()"> <i class="fa fa-truck">                       </i>配送方式</a><a href="JavaScript:;" class="nav-link flex-sm-fill text-sm-center" onclick="uppage3()"> <i class="fa fa-money">                      </i>订单审核</a><a href="#" class="nav-link flex-sm-fill text-sm-center active"> <i class="fa fa-eye">                     </i>支付方法</a></div>
          <div class="content py-3">
            <div class="row">
              <div class="col-md-6">
                <div class="box payment-method">
                  <h4>支付宝</h4>
                  <p>使用最多。</p>
                  <div class="box-footer text-center">
                    <input type="radio" name="payment" value="1">
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="box payment-method">
                  <h4>微信</h4>
                  <p>方便快捷</p>
                  <div class="box-footer text-center">
                    <input type="radio" name="payment" value="2">
                  </div>
                </div>
              </div>
              <div class="col-md-6">
                <div class="box payment-method">
                  <h4>银行卡</h4>
                  <p>其他选择。</p>
                  <div class="box-footer text-center">
                    <input type="radio" name="payment" value="3">
                  </div>
                </div>
              </div>
            </div>
            <!-- /.row-->
          </div>
          <!-- /.content-->

          <div class="box-footer d-flex justify-content-between">
            <button type="submit" class="btn btn-primary" onclick="uppage3()"><i class="fa fa-chevron-left" onclick="uppage3()"></i>订单审核</button>
            <!-- <a href="checkout2.jsp" class="btn btn-outline-secondary"><i class="fa fa-chevron-left"></i>配送方式</a> -->
            <button id="btnlast" type="submit" class="btn btn-success">确认支付</button>
          </div>
        </form>
        <!-- /.box-->
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
    <script>                                                    //省市选择
      var list = [{name:"山东省", cityList:["济南市","烟台市","潍坊市","青岛市","淄博市","枣庄市","东营市","泰安市"]},
            {name:"湖北省", cityList:["武汉市","黄冈市","黄石市","十堰市","宜昌市","鄂州市","孝感市","荆州市"]},
            {name:"浙江省", cityList:["杭州市","宁波市","温州市","嘉兴市","绍兴市","金华市","台州市","舟山市"]}]
        function getprovince() {
            var textin = document.getElementById("province").value;
            var num = 0;
            while(list[num].name != textin){
                num++;
            }
            var nowhtml = "<option value='" +list[num].cityList[0] + "'>" + list[num].cityList[0] + "</option>";
            for(var i = 1; i <list[num].cityList.length; i++){

                nowhtml += "<option value='" +list[num].cityList[i] + "'>" + list[num].cityList[i] + "</option>";
            }
            document.getElementById("city").innerHTML = nowhtml;
        }
    </script>
    <script>                                                    //四个局部界面的更换
      document.getElementById("area").innerHTML = document.getElementById("area1").innerHTML;
      function nextpage2(){
        document.getElementById("currentpage").innerText = "配送方式";
        document.getElementById("area").innerHTML = document.getElementById("area2").innerHTML;
      }
      function uppage1(){
        document.getElementById("currentpage").innerText = "配送地址";
        document.getElementById("area").innerHTML = document.getElementById("area1").innerHTML;
      }
      function nextpage3(){
        document.getElementById("currentpage").innerText = "订单审核";
        var deliverys = document.getElementsByName("delivery");
        for (i=0;i < deliverys.length;i++){
          if(deliverys[i].checked){
            document.getElementById("transform").value = deliverys[i].value;
          }
        }
        document.getElementById("area").innerHTML = document.getElementById("area3").innerHTML;
      }
      function uppage2(){
        document.getElementById("currentpage").innerText = "配送方式";
        document.getElementById("area").innerHTML = document.getElementById("area2").innerHTML;
      }
      function nextpage4(){
        document.getElementById("currentpage").innerText = "支付方法";
        document.getElementById("area").innerHTML = document.getElementById("area4").innerHTML;
      }
      function uppage3(){
        document.getElementById("currentpage").innerText = "订单审核";
        document.getElementById("area").innerHTML = document.getElementById("area3").innerHTML;
      }

    </script>
    <script type="text/javascript">
      // $(function () {
      //   $("#btnlast").click(function () {
      //     location.href = "orderServlet?action=createOrder";
      //   })
      // })
    </script>
  </body>
</html>