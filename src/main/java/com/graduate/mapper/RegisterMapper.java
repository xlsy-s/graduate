package com.graduate.mapper;

import com.graduate.pojo.Users;
import org.apache.ibatis.annotations.Param;

/**
 * 注册用户接口
 */
public interface RegisterMapper {
    Users find(@Param("username") String username);
    /**
     * 注册方法
     * @param users
     */
    void save(@Param("users") Users users);
}
