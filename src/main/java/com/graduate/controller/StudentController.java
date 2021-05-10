package com.graduate.controller;

import com.graduate.dao.ResultDao;
import com.graduate.pojo.Student;
import com.graduate.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ConcurrentModel;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

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
     * 获取所有在校学生数据 - 分页 已优化
     * @return
     */
    @GetMapping("/list")
    @ResponseBody
    public ResultDao dateList(
            @RequestParam(name = "page",defaultValue = "1") Integer page,
            @RequestParam(name = "size",defaultValue = "5") Integer size){
        return studentService.findAll(page,size);
    }

    /**
     * 通过id获取指定的学生详情信息
     */
    @GetMapping("data/{id}")
    public ModelAndView dataId(@PathVariable Integer id){
        Student studentById = studentService.findById(id);
        ModelAndView model = new ModelAndView();
        model.addObject("studentById",studentById);
        model.setViewName("student/edit");
        return model;
    }

    /**
     * 更新学生信息
     * @param student
     * @return
     */
    @PostMapping("data/update")
    @ResponseBody
    public ResultDao update(Student student){
        return studentService.updateInfo(student);
    }

    /**
     * 通过id删除指定学生
     * @param id
     * @return
     */
    @PostMapping("data/status/{id}")
    @ResponseBody
    public ResultDao updateStatus(@PathVariable Integer id){
       return studentService.updateStatus(id);
    }

    /**
     * 批量删除指定学生
     * @param ids
     * @return
     */
    @PostMapping("data/status/del")
    @ResponseBody
    public ResultDao del(@RequestParam(name = "ids[]") Integer[] ids){
        return studentService.updateDel(ids);
    }
}
