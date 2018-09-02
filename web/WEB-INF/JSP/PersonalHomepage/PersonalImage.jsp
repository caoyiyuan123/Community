<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/22
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript" src="../../../js/jquery-1.11.1.js"></script>
    <script type="text/javascript" src="../../../js/community/MainPage.js"></script>
    <title>登录成功</title>
    <script>

        /**提交请求到后台，将文件对象作为json字符串发送*/
        var image='';
        function uploadImage() {
            var username = $("#username").html();
            var data = {value:image,username:username};
//            alert(JSON.stringify(data));
            $.ajax({
                type:'POST',
                url:'/login/ModifyImage',
                contentType:'application/json;charset=utf-8',
                data:JSON.stringify(data),//json字符串格式发送
                dataType:'text',
                success:function (result) {
                    alert(result);
                    readImg(result);
                }
            });
        }

        /**接收服务器发送过来的图片*/
        function readImg(result) {
            var data = {value:result};
            alert(result);
            $.ajax({
                type:'POST',
                url:'/login/getImage',
                contentType:'application/json;charset=utf-8',
                data:JSON.stringify(data),//json字符串格式发送
                dataType:'text',
                success:function (res) {
                    alert(res);
                    alert("返回成功");
                    $("#myImg").attr("src","data:image/jpg;base64,"+res);
                    //alert(decodeURI(res));
                }
            });

        }
        /**图片预览*/
        function previewFile(file){
            if(window.FileReader){
                var reader = new FileReader();
            }else{
                alert("浏览器不支持")
            }
            /**onload事件:文件读取成功触发*/
            reader.onload = function (e) {
                document.getElementById('image').src = e.target.result;
                image = e.target.result;
                // console.log(image);
            };
            /**
             * readAsDataURL()：
             * 该方法将文件读取为一段以 data: 开头的字符串，
             * 这段字符串的实质就是 Data URL，Data URL是一种将小文件直接嵌入文档的方案。
             */
            reader.readAsDataURL(file.files[0]);

        }





    </script>
    <style>
        #userImg{
            width:50px;
            height: 50px;
            border-radius: 50%;
            overflow: hidden;
        }

        #image{
            width:300px;
            height: 300px;
        }
    </style>
</head>
<body>
<form action="" enctype="multipart/form-data" method="post">
    <input type="file" name="file" id="file" onchange="previewFile(this);"/>
    <input type="button" value="上传" id="upload" onclick="uploadImage();">
    <img id="image" name = "img" src="" alt="头像" class="image">
</form>
<div>
    <img id="userImg" src="">
    <span class="welcome" id="username">${sessionScope.username}</span>
</div>

</body>
</html>
