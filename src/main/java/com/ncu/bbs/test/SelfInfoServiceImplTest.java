package com.ncu.bbs.test;


import com.ncu.bbs.bean.Main;
import com.ncu.bbs.dao.MainMapper;
import com.ncu.bbs.services.SelfInfoService;
import com.ncu.bbs.services.impl.SelfInfoServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@ContextConfiguration("classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class SelfInfoServiceImplTest {
    @Autowired
    SelfInfoServiceImpl  selfInfoService;
    @Autowired
    MainMapper mainMapper;
    @Test
    public  void selectMainByMaineridTest(){
        List<Main> list=selfInfoService.selectMainByMainerid("121306");
        System.out.println(list);
        System.out.println(list.get(0).getmContent());
        System.out.println(list.get(1).getmContent());
        System.out.println(list.get(2).getmContent());
    }

}
