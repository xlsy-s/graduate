package com.graduate.service;

import com.graduate.dao.ResultDao;
import com.graduate.pojo.Student;
import org.springframework.security.access.annotation.Secured;

public interface StudentService {
    /**
     * 查询所有在校学生信息
     * @return
     */
    @Secured({"ROLE_TEACHER","ROLE_CHAIRMEN"})
    ResultDao findAll(Integer page,Integer size);

    /**
     * 通过id获取学生的详细信息
     */
    @Secured({"ROLE_TEACHER","ROLE_CHAIRMEN"})
    Student findById(Integer id);

    /**
     * 更新学生信息
     */
    @Secured({"ROLE_CHAIRMEN"})
    ResultDao updateInfo(Student student);

    /**
     * 删除学生 注意这里只是软删除
     */
    @Secured({"ROLE_CHAIRMEN"})
    ResultDao updateStatus(Integer id);

    /**
     * 批量删除学生
     */
    @Secured({"ROLE_CHAIRMEN"})
    ResultDao updateDel(Integer[] ids);

    /**
     * 查找学生
     */
    @Secured({"ROLE_TEACHER","ROLE_CHAIRMEN"})
    ResultDao findIf(Integer page,Integer size,String name);

    /**
     * 添加学生
     */
    @Secured({"ROLE_CHAIRMEN"})
    void createStudent(Student student);
}
