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
    <title>登录成功</title>
    <script>

        /**提交请求到后台，将文件对象作为json字符串发送*/
        var image='';
        function uploadImage() {
            var data = {value:image};
//            alert(image);
            $.ajax({
                type:'POST',
                url:'/login/ModifyImage',
                contentType:'application/json;charset=utf-8',
                data:JSON.stringify(data),//json字符串格式发送
                dataType:'text',
                success:function (result) {
                    //alert(result);
                    readImg(result);

                }
            });
        }

        /**接收服务器发送过来的图片*/
        function readImg(result) {
            var data = {value:result};
            $.ajax({
                type:'POST',
                url:'/login/getImage',
                contentType:'application/json;charset=utf-8',
                data:JSON.stringify(data),//json字符串格式发送
                dataType:'text',
                success:function (res) {
                    alert(res);
                    $("#myImg").attr("src","data:image/jpg;base64,"+res);
                    //alert(decodeURI(res));
                }
            });
//            var xhr = new XMLHttpRequest();
//            var url = '/login/getImage?id='+result;
//            xhr.open('get',url,true);
//            xhr.send(null);
//            xhr.onreadystatechange = function(){
//                if(xhr.readyState === 4 && xhr.statsu === 200){
//                    alert("响应成功");
//                }
//            }




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
        img{
            width:50px;
            height: 50px;
            border-radius: 50%;
            overflow: hidden;
        }
    </style>
</head>
<body>
    <form action="" enctype="multipart/form-data" method="post">
        <input type="file" name="file" id="file" onchange="previewFile(this);"/>
        <input type="text" id="text"/>
        <input type="button" value="上传" id="upload" onclick="uploadImage();">
        <img id="image" name = "img" src="" alt="头像" class="image">
    </form>
    <div>
        <img id="myImg" src="../../../images/add.png">
        <span>${sessionScope.username}</span>
    </div>

</body>
</html>
