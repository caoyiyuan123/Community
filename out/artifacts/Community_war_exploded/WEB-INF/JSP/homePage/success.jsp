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
        /**图片预览*/
        function previewFile(){
            var image = $("#myImg");
            var file = $("#file")[0].files[0];
            var reader = new FileReader();
            reader.addEventListener("load",function () {
                image.prop("src",reader.result);
            },false);
            if(file){
                reader.readAsDataURL(file);
            }
        }

        /**提交请求到后台*/
        var image='';
        function uploadImage() {

            var data = {value:image};
            alert(image);
            $.ajax({
                type:'POST',
                url:'/login/ModifyImage',
                contentType:'application/json;charset=utf-8',
                data:JSON.stringify(data),
                dataType:'json',
                success:function (result) {

                    alert("成功");
                }
            });
        }


//        var image='';
//        function uploadImage() {
//            var formData = new FormData();
//            formData("img",image);
//            var data = {value:formData};
//            alert(JSON.stringify(data));
//            $.ajax({
//                type:'POST',
//                url:'/login/ModifyImage',
//                contentType:'application/json;charset=utf-8',
//                data:JSON.stringify(data),
//                dataType:'json',
//                success:function (result) {
//                    alert("成功");
//                }
//            });
//        }




        function previewFile(file){
            var reader = new FileReader();
            reader.onload = function (e) {
                document.getElementById('image').src = e.target.result;
                image = e.target.result;
               // console.log(image);
            };
            reader.readAsDataURL(file.files[0]);

        }





    </script>
    <style>
        #myImg{
            width:100px;
            height: 100px;
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

</body>
</html>
