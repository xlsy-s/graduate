package com.graduate.controller;

import com.graduate.dao.ResultDao;
import com.graduate.pojo.Users;
import com.graduate.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * 登录的操作
 */
@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    private LoginService loginService;
    /**
     * 渲染登录页面
     * @return
     */
    @GetMapping("/page")
    public String loginPage(){
        return "login";
    }

    /**
     * 登录操作
     */
    @PostMapping("Login")
    @ResponseBody
    public ResultDao login(Users users, HttpSession session){
        return loginService.findByName(users,session);
    }


    /**
     * 退出登录
     */
    @GetMapping("/quit")
    @ResponseBody
    public ResultDao outPut(HttpSession session){
        // 把数据清空
        session.removeAttribute("username");
        return new ResultDao(200,"退出成功");
    }
}
