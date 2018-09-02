<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/13
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" charset="UTF-8"/>
    <title>内容页面</title>
    <link type="text/css" rel="stylesheet" href="../../../styles/reply_posts/replyPosts.css"/>
    <script type="text/javascript" src="../../../js/jquery-1.11.1.js"></script>
    <script type="text/javascript" src="../../../js/community/comment.js"></script>

    <style>

    </style>
</head>
<body>

    <jsp:include page="../public/top/top.jsp"/>

    <div class="title" id="title">${title}</div>
    <div class="content"  style="word-wrap: break-word;word-break: break-all;">
        <div class="mainBody">
            <%--<p>而且，我在自学古代典籍的过程中也不尽如人意，随着我阅读的经典越来越多，涉猎的流派越来越广，--%>
                <%--我发现自己反而越来越迷茫了，就好像是陷入了一座看不到出口的迷宫。直到一次偶然的机会，我听--%>
                <%--说了浏阳黄鉴老师的名字，那时候，黄老师已经被称为中国第一易学实战高手，一代宗师。</p>--%>
            <%--<p>螺丝刀开关劣势就看到过</p>--%>
            <%--<p>螺丝刀开关劣势就看到过</p>--%>
            <%--<p>螺丝刀开关劣势就看到过</p>--%>
            <%--<p>螺丝刀开关劣势就看到过</p>--%>
            <%--<p>且这些秦桧、王氏谋害岳飞之类的事情，虽历史有此类人物，至于谋害，这实在说不过去。岳飞是赵构下旨处死的，--%>
                <%--王氏一个宰相妻子，没参政权，如何处死得了岳飞？秦桧一介无军权的宰相，如何杀得了岳飞？张俊碰到岳飞下属举报，有人张宪想谋反，难道不抓？</p>--%>
                ${content}
        </div>
        <div class="content_evaluation">
                    <p class="like" style="">
                       <img id="like_img" src="../../../images/like.png" onclick="isClick();"><br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span id="like_num" style="font-size: larger">${clickNum}</span>
                    </p>
                    <p style="text-align: right">
                        <a href="#write_comment"><span id="show_comment">评论</span></a>
                        <span>${comments}</span>&nbsp;&nbsp;&nbsp;
                        <a href="#"><span >举报</span>&nbsp;&nbsp;&nbsp;</a>
                     </p>
        </div>
    </div>
    <div class="comment">

                <div class="comment_username">
                    <span>用户名</span>&nbsp;&nbsp;&nbsp;&nbsp;
                    <span>2018-09-05:15:32:58</span>
                </div>
                <div class="comment_content">
                    <p>来得及公开是可敬的考虑过斯柯达经历过</p>
                </div>
                <p class="comment_bottom" style="text-align: right;cursor: pointer">
                    <span>评论</span><span>12</span>&nbsp;&nbsp;&nbsp;&nbsp;
                    <span id="like_span">点赞</span><span id="numbs">125</span>&nbsp;&nbsp;&nbsp;&nbsp;
                    <span>收藏</span>&nbsp;&nbsp;&nbsp;&nbsp;
                    <span>举报</span>
                </p>
                <%--<hr style="border:1px solid cornflowerblue">--%>
    </div>
    <div class="writeComment" id="write_comment">
        <textarea class="input_box">

        </textarea>
        <div class="commit">
            <%--<span>提交</span>--%>
            <%--<span>撤销</span>--%>
            <button>提交</button>
            <button style="margin-left: 30px" onclick="window.history.back()">撤销</button>
        </div>
    </div>

</body>
</html>
