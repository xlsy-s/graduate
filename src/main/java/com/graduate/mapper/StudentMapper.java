package com.graduate.mapper;

import com.graduate.pojo.Student;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 学生信息
 */
@Repository
public interface StudentMapper {
    /**
     * 查询所有的学生
     * @return
     */
    List<Student> findAll();
}
