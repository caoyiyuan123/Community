package com.community.controller.IndexController;

import com.community.mapper.UserMapper;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import sun.misc.BASE64Encoder;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;

/**
 * @Author: jack
 * @Create: 2018-08-13-10:25
 * @Desc: 查看帖子的内容和评论
 **/
@Controller
@RequestMapping("/loginSuccess")
public class ContentController {

    @Autowired(required = false)
    private UserMapper userMapper;

    @RequestMapping("/content_check")
    public String content(){
        return "MainPage/ContentPage";
    }

    @RequestMapping(value = "/queryImage",method = RequestMethod.POST)
    @ResponseBody
    public String query(@RequestBody String data) throws IOException {
        System.out.println(data);
        JSONObject object = JSONObject.fromObject(data);
        String username = object.get("value").toString();
        /**从数据库中查询*/
        String address = userMapper.queryImage(username);
        System.out.println(address);
        File file = new File(address);
        BufferedImage image = ImageIO.read(file);
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        ImageIO.write(image,"jpg",out);
        /**将当前输出流转为字节数组*/
        byte[] datas = out.toByteArray();
        BASE64Encoder encoder = new BASE64Encoder();
        /**对字节数组进行编码*/
        String imageString = encoder.encodeBuffer(datas).trim();
        imageString.replaceAll("\n","").replaceAll("\r","");
        return imageString;
    }
}
