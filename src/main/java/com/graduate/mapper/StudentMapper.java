package com.graduate.mapper;

import com.graduate.pojo.Student;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 学生信息
 */
@Repository
public interface StudentMapper {
    /**
     * 查询所有在校的学生
     * @return
     */
    List<Student> findAll();

    /**
     * 获取学生详细信息
     */
    Student findById(@Param("id") Integer id);

    /**
     *  更新学生数据
     * @param student
     */
    void updateInfo(@Param("student") Student student);
    /**
     * 删除学生 注意这里只是软删除
     */
    void updateStatus(@Param("id") Integer id);

    /**
     * 批量删除学生 这里也是软删除 所有的删除就只有管理员有这个权限
     */
    void updateDel(@Param("ids") Integer[] ids);

    /**
     * 通过老师的id查询所有与他相关联的学生
     */

    /**
     * 带条件的查询学生
     * 通过学生姓名查找
     */
    List<Student> findIf(@Param("name") String name);

    /**
     * 添加学生
     * @param student
     */
    void createStudent(@Param("student") Student student);

}
