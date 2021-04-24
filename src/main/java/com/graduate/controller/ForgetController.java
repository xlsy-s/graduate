package com.graduate.controller;

import com.graduate.dao.ResultDao;
import com.graduate.pojo.Users;
import com.graduate.service.ForgetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 忘记密码
 */
@Controller
@RequestMapping("/forget")
public class ForgetController {
    @Autowired
    private ForgetService forgetService;
    /**
     * 渲染忘记密码页
     */
    @GetMapping("/page")
    public String forgetPage(){
        return "operate/forget";
    }
    /**
     * 更改密码
     */
    @PostMapping("/update")
    @ResponseBody
    public ResultDao update(Users users){
        return forgetService.updatePassword(users);
    }

}
