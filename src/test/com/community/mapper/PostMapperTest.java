package com.community.mapper;

import com.community.entity.Post;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static org.junit.Assert.*;

public class PostMapperTest {


    @Autowired
    private PostMapper postMapper;

    @Before
    public void init(){
        ApplicationContext ac = new FileSystemXmlApplicationContext("web/WEB-INF/applicationContext.xml");
        System.out.println(ac);
        postMapper = ac.getBean("postMapper",PostMapper.class);
        System.out.println(postMapper);
    }
    @Test
    public void add() throws Exception {
        Post post = new Post();
        post.setTitle("出车祸重度烧伤");
        post.setAuthor("风喜重楼");
        post.setContent("当我决定将这个故事落在纸面上的时候，我犹豫了很久，因为这些事情，在现在的科学领域看来完全就是荒谬的，不可信的，它们根本既不符合当下的世界观，也不应该流传在今后的世界上。\n" +
                "　　可我依旧还是决定将这些故事完整地记述下来，因为我觉得我用了将近20年的时间，将这段经历画上一个完满的句号，如果不将其记述下来的话，对我自己真的是一种遗憾，同样对于那些在事件当中离去的人们，也是一种不负责任。\n" +
                "　　故事的开端就那年仲夏的某个深夜……\n" +
                "　　我和父母所乘坐的大巴车行驶在回村崎岖的盘山公路上，这段山路很险，司机也是格外的小心，竭力放慢了车速，也正是如此，让我能手扒着车窗探出头去欣赏夜空当中的繁星和夜幕下的山林风景。\n" +
                "　　车上的乘客基本上都进入了梦乡，恐怕此时还维持在清醒状态的，就只有我和司机了。\n" +
                "　　一切都看似那么的祥和，那么的美好，可是突然间，车子前面突然出现一道耀眼的白光。");
        post.setClickNum(0);
        post.setComments(0);


        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String curTime = dateFormat.format(date);
        System.out.println(curTime);

        post.setCreatime(curTime);

        postMapper.add(post);

    }

    @Test
    public void queryPost() throws Exception {
        String title = "足球公园";
        Post post = postMapper.queryPost(title);
        System.out.println(post);
    }

    @Test
    public void queryAll() throws Exception {
        List<Post> list = postMapper.queryAll();
        for(Post post:list){
            System.out.println(post);
        }
        System.out.println(list);
    }

    @Test
    public void updateLikesNums() throws Exception {
        String title="足球公园";
        Integer clickNum = 201;
        Post post = new Post();
        post.setTitle(title);
        post.setClickNum(clickNum);
        postMapper.updateLikesNums(post);

    }
}