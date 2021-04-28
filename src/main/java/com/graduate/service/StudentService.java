package com.graduate.service;

import com.graduate.dao.ResultDao;
import com.graduate.pojo.Student;

public interface StudentService {
    /**
     * 查询所有在校学生信息
     * @return
     */
    ResultDao findAll(Integer page,Integer size);

    /**
     * 通过id获取学生的详细信息
     */
    Student findById(Integer id);

    /**
     * 更新学生信息
     */
    ResultDao updateInfo(Student student);

    /**
     * 删除学生 注意这里只是软删除
     */
    ResultDao updateStatus(Integer id);

    /**
     * 批量删除学生
     */
    ResultDao updateDel(Integer[] ids);
}
