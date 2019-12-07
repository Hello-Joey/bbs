package com.ncu.bbs.controller;

import com.ncu.bbs.bean.Msg;
import com.ncu.bbs.bean.administrator;
import com.ncu.bbs.services.impl.AdministratorServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/adm")
public class adminController {
    @Autowired
    AdministratorServiceImpl administratorService;


    @RequestMapping(value = "/findAll")
    @ResponseBody
    public Msg selectAllAdmin() {
          List<administrator> list=administratorService.selectAllAdministrator();

           return  Msg.success().add("allAdmin",list);
    }
}
