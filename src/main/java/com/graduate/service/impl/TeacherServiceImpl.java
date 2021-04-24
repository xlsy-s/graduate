package com.graduate.service.impl;

import com.graduate.mapper.TeacherMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 教师业务实现接口
 */
@Service
public class TeacherServiceImpl {

    @Autowired
    private TeacherMapper teacherMapper;

}
