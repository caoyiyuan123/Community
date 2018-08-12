package com.community.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: jack
 * @Create: 2018-08-11-18:28
 * @Desc: 登录页面
 **/
@Controller
public class loginController {

    @RequestMapping("/login")
    public String login(){
        System.out.println(123);
        return "homePage/login";
    }

}
