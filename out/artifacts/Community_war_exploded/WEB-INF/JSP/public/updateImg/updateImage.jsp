<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/1
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改头像</title>
    <link type="text/css" rel="stylesheet" href="../../../../styles/ModifyImage/modifyImage.css"/>
    <script type="text/javascript" src="../../../../js/jquery-1.11.1.js"></script>
    <script type="text/javascript" src="../../../../js/community/top.js"></script>
    <script type="text/javascript" src="../../../../js/community/modifyImg/modifyImage.js"></script>
</head>
<body>

    <jsp:include page="../top/top.jsp"/>
    <h3>个人头像</h3>
    <div class="personalImg">
        <form action="${pageContext.request.contextPath}/update/upload" enctype="multipart/form-data" method="post">
            <input type="file" id="file" name="file" onchange="preview(this);">
            <p><img id="Img" name="img" src=""></p>
            <img id="largerImg" name="img" src="">
            <img id="mediumImg" name="img" src="">
            <img id="smallImg" name="img" src="">
            <span id="username" name="username">${sessionScope.username}</span>

        <input type="submit" id="btn1" value="保存"/>
        </form>
    </div>
</body>
</html>
