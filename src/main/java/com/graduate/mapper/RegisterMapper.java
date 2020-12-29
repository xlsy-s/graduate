package com.graduate.mapper;

import com.graduate.pojo.Users;
import org.apache.ibatis.annotations.Param;

/**
 * 注册用户接口
 */
public interface RegisterMapper {
    /**
     * 判断用户名是否存在
     * @param username
     * @return
     */
    String find(@Param("username") String username);

    /**
     * 判断电话是否存在
     * @param phone
     * @return
     */
    String findPhone(@Param("phone")String phone);

    /**
     * 注册方法
     * @param users
     */
    void save(@Param("users") Users users);
}
