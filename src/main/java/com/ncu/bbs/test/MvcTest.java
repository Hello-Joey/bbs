package com.ncu.bbs.test;

import org.junit.Before;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MockMvcBuilder;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
//
//@ContextConfiguration("classpath:applicationContext.xml")
//@WebAppConfiguration
//@RunWith(SpringJUnit4ClassRunner.class)
//public class MvcTest {
//    @Autowired
//    WebApplicationContext context;
//    MockMvc mockmvc;
//    @Before
//    public void initMockMvc(){
//        mockmvc= MockMvcBuilders.webAppContextSetup(context).build();
//    }
//    public void testPage() throws Exception{
//       MvcResult result= mockmvc.perform(MockMvcRequestBuilders.get("/getArticle").param("pn","1"));
//    }
//}
