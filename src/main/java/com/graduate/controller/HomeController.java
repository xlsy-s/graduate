package com.graduate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class HomeController {
    /**
     * 首页
     * @return
     */
    @GetMapping("/page")
    public String homePage(){
        return "home";
    }

}
