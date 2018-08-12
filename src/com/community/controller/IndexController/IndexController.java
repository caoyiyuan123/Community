package com.community.controller.IndexController;

import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: jack
 * @Create: 2018-08-12-16:18
 * @Desc: 登录之后显示的主页面
 **/
@Controller
public class IndexController {
    @RequestMapping("/AfterLogin")
    public String enter(){
        System.out.println("123456");
        return "FirstPage/MainPage";
    }
}
