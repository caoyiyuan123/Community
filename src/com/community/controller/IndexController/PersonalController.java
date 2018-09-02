package com.community.controller.IndexController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: jack
 * @Create: 2018-08-15-16:40
 * @Desc: 个人主页
 **/
@Controller
@RequestMapping("/personal")
public class PersonalController {

    /**修改个人头像*/
    @RequestMapping("/modifyImage")
    public String demo(){
        return "PersonalHomepage/PersonalImage";
    }
}
