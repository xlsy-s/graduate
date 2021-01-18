package com.graduate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
    /**
     * 渲染教师列表页
     * @return
     */
    @GetMapping("/page")
    public String page(){
        return "teacher/list";
    }
}