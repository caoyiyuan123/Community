<%@page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>主页面</title>
    <link type="text/css" rel="stylesheet" media="all" href="../../../styles/whole.css" />
    <link type="text/css" rel="stylesheet" media="all" href="../../../styles/MainPage/mainPage.css" />
</head>
<body>
<!--主要区域开始-->
<div class="search">
    <input class="search_context" type="text" value="" placeholder="你想知道的这里都有">
    <input class="search_button" type="button" value=""/>
    <button class="login_btn"><a href="${pageContext.request.contextPath}/login">登录</a></button>
    <button class="register_btn"><a href="${pageContext.request.contextPath}/register">注册</a></button>
</div>



<div class="main">
    <form action="" method="">
        <!--数据区域：用表格展示数据-->
        <div class="data">
            <table class="table">
                <thead class="head">
                    <tr>
                        <td class="id">ID</td>
                        <td class="title">标题</td>
                        <td class="author">作者</td>
                        <td class="click">点击</td>
                        <td class="answer">回复</td>
                        <td class="creatime">创建时间</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="id">1</td>
                        <td class="title"><a href="${pageContext.request.contextPath}/content_check">足球</a></td>
                        <td class="author">天下足球</td>
                        <td class="click">102</td>
                        <td class="answer">25</td>
                        <td class="creatime">2018-08-08 15:30</td>
                    </tr>
                    <tr>
                        <td class="id">2</td>
                        <td class="title">足球</td>
                        <td class="author">天下足球</td>
                        <td class="click">102</td>
                        <td class="answer">25</td>
                        <td class="creatime">2018-08-08 15:30</td>
                    </tr>
                    <tr>
                        <td class="id">3</td>
                        <td class="title">足球</td>
                        <td class="author">天下足球</td>
                        <td class="click">102</td>
                        <td class="answer">25</td>
                        <td class="creatime">2018-08-08 15:30</td>
                    </tr>
                    <tr>
                        <td class="id">4</td>
                        <td class="title">足球</td>
                        <td class="author">天下足球</td>
                        <td class="click">102</td>
                        <td class="answer">25</td>
                        <td class="creatime">2018-08-08 15:30</td>
                    </tr>
                    <tr>
                        <td class="id">5</td>
                        <td class="title">足球</td>
                        <td class="author">天下足球</td>
                        <td class="click">102</td>
                        <td class="answer">25</td>
                        <td class="creatime">2018-08-08 15:30</td>
                    </tr>
                </tbody>

            </table>
        </div>
    </form>

</div>
<!--主要区域结束-->
<!--底部分页-->
<div class="pages">
    <button><a href="http://lol.qq.com/">首页</a></button>
    <button><a href="http://lol.qq.com/">上一页</a></button>
    <button><a href="http://lol.qq.com/">1</a></button>
    <button><a href="http://lol.qq.com/">2</a></button>
    <button><a href="http://lol.qq.com/">3</a></button>
    <button><a href="http://lol.qq.com/">下一页</a></button>
    <button><a href="http://lol.qq.com/">尾页</a></button>
</div>
</body>
</html>
