<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <script type="text/javascript" src="../../../../js/jquery-1.11.1.js"></script>
    <script type="text/javascript" src="../../../../js/community/top.js"></script>
    <style>
        .topDiv{
            width:300px;
            height: 50px;
            position:relative;
            left: 1000px;
            top: 50px;
        }
        .userImg{
            width:50px;
            height: 50px;
            border-radius: 50%;
            position: relative;
            left:20px;
        }
        .welcome{
            position: relative;
            left:30px;
            top:-18px;
            font-family: "微软雅黑", sans-serif;
            font-size: 15px;
            color:black;
        }

        .out{
            position:relative;
            left:50px;
            top: -18px;
        }


    </style>
    <div class="topDiv">
        <a href="${pageContext.request.contextPath}/update/ModifyImage"><img class="userImg" id="userImg" src=""></a>
        <span class="welcome">${sessionScope.username}</span>
        <a class="out" href="">退出</a>
    </div>

