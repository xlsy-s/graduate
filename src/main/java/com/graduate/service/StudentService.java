package com.graduate.service;

import com.graduate.pojo.Student;

import java.util.List;

public interface StudentService {
    /**
     * 查询所有学生信息
     * @return
     */
    List<Student> findAll();
}
