package com.community.controller.login;

import com.community.Utils.VerifyCodeUtils;
import net.sf.json.JSONObject;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import sun.misc.BASE64Decoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/**
 * @Author: jack
 * @Create: 2018-08-19-19:34
 * @Desc:
 **/
@Controller
@RequestMapping("/login")
public class LoginController {

    @RequestMapping("/loginIndex")
    public String login(){
        return "homePage/login";
    }

    @RequestMapping("/loginCheck")
    public String loinSuccess(@RequestParam("username") String username,
                              @RequestParam("pwd") String password,HttpServletRequest request){
        System.out.println("username:"+username+","+"password:"+password);

        /**利用Session取得用户名和密码*/
        HttpSession session = request.getSession();
               session.setAttribute("username",username);

        //1.获取subject主体对象
        Subject subject = SecurityUtils.getSubject();
        //2.将用户名和密码存入token中
        if (!subject.isAuthenticated()) {
            UsernamePasswordToken token = new UsernamePasswordToken(username,password);
            //3.主体对象执行登录功能
            try{
                subject.login(token);
                System.out.println("登录成功");
            }catch (Exception e){
                System.out.println("登录失败");
                return "errorPage/error";
            }

        }
        return "homePage/success";
    }

    /**改变验证码*/
    @RequestMapping(value = "/changeImg",method = RequestMethod.GET)
    public void changeImg(HttpServletRequest request, HttpServletResponse response){
        response.setHeader("Pragma","No-cache");
        response.setHeader("Cache-Controller","no-cache");
        response.setDateHeader("Expires",0);

        response.setContentType("image/jpeg");


        //生成随机字符串
        String verifyCode = VerifyCodeUtils.generateVerifyCode(4);
        //存入会话的session
        HttpSession session = request.getSession(true);
        session.setAttribute("rand",verifyCode.toLowerCase());
        //生成图片
        int w = 100,h=40;
        try {
            VerifyCodeUtils.outputImage(w,h,response.getOutputStream(),verifyCode);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    /**比较验证码*/
    @RequestMapping(value = "/compare",method = RequestMethod.POST)
    @ResponseBody
    public String compare(@RequestBody String data, HttpSession  session){
        JSONObject jsonObject = JSONObject.fromObject(data);
        String verifyCode = jsonObject.get("value").toString();
        String rand = session.getAttribute("rand").toString();
        if (rand.equalsIgnoreCase(verifyCode)) {
            return "true"; //输入的值与图片的值相同
        }else{
            System.out.println("noOK");
            return "false";
        }



    }

    /**实现上传图片功能*/
    @RequestMapping(value = "/ModifyImage",method = RequestMethod.POST)
    @ResponseBody
    public String changeImage(@RequestBody String data) throws IOException {
//        System.out.println("123456789");
//        Object file = request.getParameter("file");
//        System.out.println(file);
        JSONObject jsonObject = JSONObject.fromObject(data);
//        System.out.println(jsonObject.get("value"));
        String header = "data:video/mp4;base64,";
        String image = jsonObject.getString("value");
        System.out.println(image.length());
        image = image.substring(header.length());
        BASE64Decoder decoder = new BASE64Decoder();

            byte[] bytes = decoder.decodeBuffer(image);


            long time = System.currentTimeMillis();
            File path = new File("F:\\temp/"+time+".mp4");
            FileOutputStream outputStream = new FileOutputStream(path);
            outputStream.write(bytes);
            outputStream.close();


        return path.getAbsolutePath();
    }
}
