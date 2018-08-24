package com.community.controller.IndexController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: jack
 * @Create: 2018-08-15-16:40
 * @Desc: 个人主页
 **/
@Controller
public class PersonalController {
        @RequestMapping("/personal")
    public String demo(){
        return "PersonalHomepage/Personal";
    }
}
