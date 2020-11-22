package com.graduate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 主页的相关操作
 */
@Controller
@RequestMapping("/index")
public class IndexController {
    /**
     * 渲染首页
     */
    @GetMapping("/page")
    public String indexPage(){
        return "index";
    }
}
