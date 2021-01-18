package com.graduate.mapper;

import com.graduate.pojo.Teacher;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TeacherMapper {
    /**
     * 查询所有老师
     * @return
     */
    List<Teacher> findAll();

    // 分页查询

    /**
     * 通过id查询老师的信息
     * @param id
     * @return
     */
    Teacher findById(@Param("id") Integer id);

    // 模糊查询

    /**
     * 通过id 删除老师
     * 注意这里使用的逻辑删除
     * @param ids
     */
    void deleteTeacher(@Param("ids") int[] ids);

    /**
     * 更新老师信息
     * @param id
     */
    void updateById(@Param("id") Integer id);

    /**
     * 添加老师
     * @param teacher
     */
    void save(@Param("teacher") Teacher teacher);
}
