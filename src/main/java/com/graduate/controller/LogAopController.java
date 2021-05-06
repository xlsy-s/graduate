package com.graduate.controller;

import com.graduate.dao.ResultDao;
import com.graduate.service.LogAopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/log")
@Controller
public class LogAopController {
    @Autowired
    private LogAopService logAopService;

    /**
     * 渲染日志页
     */
    @GetMapping("/page")
    public String logPage(){
        return "aid/log";
    }
    /**
     * 查询所有
     */
    @GetMapping("/page/list")
    @ResponseBody
    public ResultDao findAll(){
        return logAopService.findAll();
    }
}
