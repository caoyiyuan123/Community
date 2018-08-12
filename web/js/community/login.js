/**html页面加载完之后执行*/
$(function () {
    username_check();
    password_check();
    code_check();
});

/**校验用户名*/
function username_check() {
        /**失去焦点事件*/
        $("#username").blur(function () {
            var content = $("#username").val();
            /**匹配空格*/
            var a = new RegExp("\\s+");
            console.log(a.test(content));
            var $username_div = $("#username_div");
            var $span = $username_div.find("span").eq(0);
            console.log($span);
            var $img = $username_div.find("img").eq(0);
            var reg = /^[a-zA-Z_][a-zA-Z_0-9]{5,9}$/;
            /**匹配未输入任何内容*/
            if(content.length === 0){
                $span.css("display","inline");
                $img.css("display","inline");
                $span.html("请输入用户名!");
                /**输入的为空白字符(包括空格、Tab键、回车、换行符等)*/
            } else if(reg.test(content.trim())){
                alert("发送后台校验!");
            }else{
                // alert("有问题！");
                /**选择div下的span元素和img元素*/
                 $span.css("display","inline");
                 $img.css("display","inline");

                $span.html("用户名不合法!");
                // $span.innerHTML = "123";
                // $span.setAttribute("style","display:inline");
                // document.getElementById("username_div").getElementsByTagName("span")[0].innerHTML="123";
            }

        });
}

/**校验密码*/
function password_check() {
    /**失去焦点事件*/
    $("#password").blur(function () {
        var $content = $("#password").val();
        var $password_div =  $("#password_div");
        var $span = $password_div.find("span").eq(0);
        var $img = $password_div.find("img").eq(0);
        var reg = /^[a-zA-Z][a-zA-Z0-9]{5,9}$/;
        if($content.length === 0){
            $span.css("display","inline");
            $img.css("display","inline");
            // $span.attr("style","display:inline");
           $span.html("请输入密码");
        }else if(reg.test($content.trim())){
            alert("发送后台校验!");
        }else{
            /**选择div下的span元素和img元素*/
            $span.css("display","inline");
            $img.css("display","inline");

            $span.html("密码不合法!");
        }

    });
}

/**校验验证码*/
function code_check() {
    $("#Code_name").blur(function () {
        var $content = $("#Code_name").val();
        var $code_div = $("#code_div");
        var $span = $code_div.find("span").eq(0);
        var $img = $code_div.find("img").eq(0);
        if($content.length === 0){
            $img.css("display","inline");
            $span.css("display","inline");
        } else {
            alert("发送后端校验");
        }


    });
}