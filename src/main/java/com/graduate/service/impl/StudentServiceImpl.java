package com.graduate.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.graduate.dao.ResultDao;
import com.graduate.mapper.StudentMapper;
import com.graduate.pojo.Student;
import com.graduate.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentMapper studentMapper;

    /**
     * 获取所有在校学生信息
     * @return
     */
    @Override
    public ResultDao findAll(Integer page,Integer size) {
        // 分页 需要在执行sql前添加
        PageHelper.startPage(page,size);
        List<Student> students = studentMapper.findAll();
        // pageInfo 就是一个分页bean
        PageInfo pageInfo = new PageInfo(students);
        return new ResultDao(200,"获取数据成功",pageInfo);
    }

    /**
     * 获取指定学生的信息
     * @param id
     * @return
     */
    @Override
    public Student findById(Integer id) {
        Student dbStudent = studentMapper.findById(id);
        dbStudent.setStudentSex(judgeSex(dbStudent.getStudentGender()));
        dbStudent.setStudentBirthDay(dateTime(dbStudent.getStudentBirth()));
        dbStudent.setStudentTimeDay(dateTime(dbStudent.getStudentTime()));
        return dbStudent;
    }

    /**
     * 更新学生信息
     * @param student
     * @return
     */
    @Override
    public ResultDao updateInfo(Student student) {
        studentMapper.updateInfo(student);
        return new ResultDao(200,"更新成功");
    }

    /**
     * 单个删除学生
     * @param id
     */
    @Override
    public ResultDao updateStatus(Integer id) {
        studentMapper.updateStatus(id);
        return new ResultDao(200,"删除成功");
    }

    /**
     * 批量删除学生
     * @param ids
     */
    @Override
    public ResultDao updateDel(Integer[] ids) {
        studentMapper.updateDel(ids);
        return new ResultDao(200,"删除成功");
    }

    /**
     * 条件查询学生
     * @param name
     * @return
     */
    @Override
    public ResultDao findIf(Integer page,Integer size,String name) {
        PageHelper.startPage(page,size);
        List<Student> students = studentMapper.findIf(name);
        PageInfo pageInfo = new PageInfo(students);
        return new ResultDao(200,"获取数据成功",pageInfo);
    }

    /**
     * 添加学生
     * @param student
     */
    @Override
    public void createStudent(Student student) {
        studentMapper.createStudent(student);
    }

    /**
     * 封装判断性别的方法
     */
    private String judgeSex(Integer studentGender){
        return studentGender==1? "男":"女";
    }

    /**
     * 封装处理时间的方法
     */
    private String dateTime(Date date){
        SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd");
        return sp.format(date);
    }
}
