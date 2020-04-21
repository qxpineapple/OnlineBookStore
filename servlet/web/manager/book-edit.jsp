<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>添加新书</title>
    <link href="../css/demo.css" rel="stylesheet" type="text/css">
</head>
<body>
    <section id="getintouch" >
        <div class="container" style="border-bottom: 0;">
            <h1>
                <span>图书编辑</span>
            </h1>
        </div>
        <div class="container">
            <form class="contact" action="bookServlet" method="post" id="form">
            <input type="hidden" name="action" value="${empty param.id ? "add" : "update"}" />
            <input type="hidden" name="id" value="${requestScope.book.id}" />
            <input type="hidden" name="pageNo" value="${requestScope.pageNo}">
            <div class="row clearfix">
                <div class="lbl">
                    <label for="name">
                        书名：</label>
                </div>
                <div class="ctrl">
                    <input type="text" id="name" name="name" placeholder="" value="${requestScope.book.name}">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="price">
                        售价：</label>
                </div>
                <div class="ctrl">
                    <input type="text" id="price" name="price" placeholder="" value="${requestScope.book.price}">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="author">
                        作者：</label>
                </div>
                <div class="ctrl">
                    <input type="text" id="author" name="author" placeholder="" value="${requestScope.book.author}">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="sales">
                        销量：</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="sales" id="sales" placeholder="" value="${requestScope.book.sales}">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label for="stock">
                        库存：</label>
                </div>
                <div class="ctrl">
                    <input type="text" name="stock" id="stock" placeholder="" value="${requestScope.book.stock}">
                </div>
            </div>
                <div class="row clearfix">
                    <div class="lbl">
                        <label for="type">
                            类别：</label>
                    </div>
                    <div class="ctrl">
                        <input type="text" name="type" id="type" placeholder="" value="${requestScope.book.type}">
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="lbl">
                        <label for="imgPath">
                            图片：</label>
                    </div>
                    <div class="ctrl">
                        <input type="text" name="imgPath" id="imgPath" placeholder="" value="${requestScope.book.imgPath}">
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="lbl">
                        <label for="press">
                            出版社：</label>
                    </div>
                    <div class="ctrl">
                        <input type="text" name="press" id="press" placeholder="" value="${requestScope.book.press}">
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="lbl">
                        <label for="time">
                            出版时间：</label>
                    </div>
                    <div class="ctrl">
                        <input type="text" name="time" id="time" placeholder="" value="${requestScope.book.time}">
                    </div>
                </div>
                <div class="row clearfix">
                    <div class="lbl">
                        <label for="introduction">
                            简介：</label>
                    </div>
                    <div class="ctrl">
                        <input type="text" name="introduction" id="introduction" placeholder="" size="66px" value="${requestScope.book.introduction}">

                    </div>
                </div>
            <div class="row  clearfix">
                <div class="span10 offset2">
                    <input type="submit" name="submit" id="submit" class="submit" value="提交">
                </div>
            </div>
            </form>

            <div id="validation">
            </div>
        </div>
    </section>
</body>
</html>
