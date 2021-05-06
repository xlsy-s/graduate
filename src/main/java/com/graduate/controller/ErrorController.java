package com.graduate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 访问不存在或者发生错误时，跳转的网页
 */
@Controller
@RequestMapping("/error")
public class ErrorController {
    @GetMapping("/error404")
    public String error404(){
        return "error/404";
    }
    @GetMapping("/error403")
    public String error403(){
        return "error/403";
    }
}
