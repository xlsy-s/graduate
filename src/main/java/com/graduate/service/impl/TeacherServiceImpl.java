package com.graduate.service.impl;

import com.graduate.mapper.TeacherMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 教师业务实现接口
 */
@Service
@Transactional
public class TeacherServiceImpl {

    @Autowired
    private TeacherMapper teacherMapper;

}
