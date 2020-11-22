package com.graduate.controller;

import com.graduate.dao.ResultDao;
import com.graduate.pojo.Users;
import com.graduate.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 注册操作
 */
@Controller
@RequestMapping("/register")
public class RegisterController {
    @Autowired
    private RegisterService registerService;
    /**
     * 渲染注册页面
     */
    @GetMapping("/page")
    public String registerPage(){
        return "register";
    }
    /**
     * 注册方法
     */
    @PostMapping("/add")
    @ResponseBody // 解析json数据
    public ResultDao add(Users users){
        return registerService.save(users);
    }

}
