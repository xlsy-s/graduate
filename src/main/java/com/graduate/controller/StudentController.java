package com.graduate.controller;

import com.graduate.dao.ResultDao;
import com.graduate.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentService studentService;
    /**
     * 渲染学生列表页
     * @return
     */
    @GetMapping("/page")
    public String page(){
        return "student/list";
    }

    /**
     * 获取所有学生数据--为分页的
     * @return
    @GetMapping("/list")
    @ResponseBody
    public ResultDao dateList(){
        return studentService.findAll();
    }
     */

    /**
     * 获取所有学生数据
     * 该接口需要优化 展示以院系与专业分组展示
     * 该方法只有管理员才可以使用
     * @return
     */
    @GetMapping("/list")
    @ResponseBody
    public ResultDao dateList(
            @RequestParam(name = "page",defaultValue = "1") Integer page,
            @RequestParam(name = "size",defaultValue = "5") Integer size){
        return studentService.findAll(page,size);
    }
}
