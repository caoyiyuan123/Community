package com.community.controller.IndexController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: jack
 * @Create: 2018-08-13-10:25
 * @Desc: 查看帖子的内容和评论
 **/
@Controller
public class ContentController {

    @RequestMapping("/content_check")
    public String content(){
        return "MainPage/ContentPage";
    }
}
