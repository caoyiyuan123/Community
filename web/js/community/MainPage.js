$(function () {
    query_image();
});


/**查询数据库该用户是否有头像*/
function query_image() {
    var username = $(".welcome").html();
    var data = {value:username};
    alert(JSON.stringify(data));
    $.ajax({
        type:'POST',
        url:'/loginSuccess/queryImage',
        contentType:'application/json;charset=utf-8',
        data:JSON.stringify(data),
        dataType:'text',
        success:function (result) {
            alert(result);
            $("#userImg").attr("src","data:image/jpg;base64,"+result);
        }
    })
}

/**单击头像跳转个人信息页面*/

