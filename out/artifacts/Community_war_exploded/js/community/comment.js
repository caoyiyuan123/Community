/**查看帖子内容*/
$(function () {
    likeNumAdd();
});

/**点赞数字增加*/
function likeNumAdd() {
    $("#like_img").click(function () {
        $("#like_img").css("background-color","red");
        var num = $("#like_num").text();
        num++;
        alert(num);
       $("#like_num").text(num);
    });

    $("#like_span").click(function () {
        $("#like_img").css("background-color","red");
        var num = $("#numbs").text();
        num++;
        alert(num);
        $("#numbs").text(num);
    });

    // $("#show_comment").click(function () {
    //     var t = $("#write_comment").offset().top;//获取需要跳转到标签的top值
    //     alert(t);
    //     $(window).scrollTop(t);
    // });
}