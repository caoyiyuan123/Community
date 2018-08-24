package com.community.service;

import com.community.entity.User;
import com.community.mapper.UserMapper;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import javax.annotation.Resource;

import static org.junit.Assert.*;

public class UserServiceTest {

    @Autowired
    private UserService userService;

    @Before
    public void init(){
        ApplicationContext ac = new FileSystemXmlApplicationContext("web/WEB-INF/applicationContext.xml");
//        System.out.println(ac);
         userService = ac.getBean("userService",UserService.class);
        System.out.println(userService);
    }
    @Test
    public void findByName() throws Exception {
            User user = userService.findByName("caoyiyuan");
            System.out.println(user);
    }

}